# Class implementation in WebAssembly

<!-- 2019-05-01 -->

WebAssembly only have 4 primitive type that available to its users. The class object in VisualBasic is an kind of highlevel type, and the class object in VisualBasic.NET is looks like a kind of WebAssembly module instance.

## Class memory structure

The class object for VisualBasic compiles into WebAssembly is a kind of memory pointer(A ``i32`` value for indicate memory location), the class object instance its memory layout in WebAssembly runtime looks like:

```R
# object instance
i32      i32         byte varient  byte varient  byte varient
class_id slot_count (flag slot1)  (flag slot2)  (flag slot3) ...
```

Here is the details about the memory layout:

+ ``class_id`` (i32) The class object its hash id in generated webassembly, so if two object instance its ``class_id`` value equals to each other, that means they have the exactly identical type definition. Comparison between the class_id is equivalent to type comparison in VisualBasic: ``a.GetType() Is b.GetType()``
+ ``flag`` (byte) The field/property data type flag: (0) object/any, (1) i32, (2) i64, (3) f32, (4) f64 and (5) reference
+ ``slot`` (i32/i64/f32/f64) The slots hold the class field value. If the field type in VisualBasic is not WebAssembly's primitive type, then a memory pointer will be used as its slot value. Due to the reason of memory pointer is also ``i32`` type in WebAssembly, so that the ``flag`` byte will be used for distinguish the i32 and memory pointer: if the ``flag`` byte equals to 1, means the slot value is ``i32``, else if the ``flag`` byte equals to 5, that means the slot value is a memory pointer.

## Using memory pointer

The memory pointer is a kind of type alias of ``i32``, which its alias name in vanilla compiler is ``intptr``. You can using the memory pointer for read data from WebAssembly memory or get a javascript object from javascript runtime. The javascript object in javascript runtime is managed by ``WebAssembly.ObjectManager`` and you can get the javascript object in js script by access the api ``WebAssembly.ObjectManager.getObject`` and ``WebAssembly.ObjectManager.addObject``.

Important Note: **All of the memory pointer that point to the object in javascript runtime is negative value, and all of the memory pointer that point to the object in WebAssembly runtime is positive value**. So that you can using memory pointer its i32 sign result value to distinguish target object is comes from javascript runtime or WebAssembly runtime.

## WebAssembly Object to JavaScript Object

### The class declare meta

If you have declared a class/structure in VisualBasic.NET code, then the property name and function name that declared in VB source file will be generated automatic in the memory of the WebAssembly. The memory layout of the class declaration looks like:

```R
class_name parents parent_id parent_id slot_counts [field_name type] [field_name type] ... method_counts [method_name/property_name type]
```

Here is the details about the memory layout:

+ ``class_name`` (string) The user class name label
+ ``parents`` (i32) The class its parent count, if the class didn't inherits from any base class, then this value is zero, which point to the ``System.Object`` class.
+ ``parent_id`` (i32) The ``class_id`` of the parent class. The ``class_id`` is actually the initial position of the class_name string. The count of the ``parent_id`` is equals to the ``parents`` value.
+ ``slot_counts`` (i32) The field numbers in this class, includes its parent class.
+ ``field_name`` (string) The field name
+ ``type`` (i32) 1 means i32, 2 means i64, 3 means f32, 4 means f64 and other value is the ``class_id``
+ ``method_name/property_name`` (string) The name of the methods and the properties. Due to the reason of property is a kind of method syntax sugar in VisualBasic.NET, so that property and method was place in the same group in WebAssembly.

Important Note: **All of the string in WebAssembly memory is ZERO terminated**.

### Create javascript object from WebAssembly

So with the class meta data that we are able to create a javascript by reading the WebAssembly memory, for example, suppose we have a class object instance its memory pointer value, so we can read its ``class_id`` by read the 4 bytes in the begining position of the class object instance.

Suppose we have the ``class_id`` now, then we can using this ``class_id`` as memory pointer to read the class declare meta data in the memory:

1. read string to get ``class_name``
2. read next 4 bytes to get ``parents`` counts and then skip ``parents * 4`` bytes.
3. now we can read the next 4 bytes to get ``slot_counts``
4. now read the ``field_name`` string
5. now read the class instance field value: if the value type is primitive type, then using the value directly as the property value in javascript object, else get class object recursivly by use the value as memory pointer.
6. when loop end of the fields, then we are able to get the class methods.
7. now read the 4 byts to get ``method_counts``
8. read method name for create a javascript function base on the exportted WebAssembly function.