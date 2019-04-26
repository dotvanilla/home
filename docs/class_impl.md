# Class implementation in WebAssembly

WebAssembly only have 4 primitive type that available to its users. The class object in VisualBasic is an kind of highlevel type, and the class object in VisualBasic.NET is a kind of WebAssembly module instance.

## Class memory structure

The class object for VisualBasic compiles into WebAssembly is a kind of memory pointer, the class object instance its memory layout in WebAssembly runtime looks like:

```R
# object instance
i32      i32         byte varient  byte varient  byte varient
class_id slot_count (flag slot1)  (flag slot2)  (flag slot3) ...
```

Here is the details about the memory layout:

+ ``class_id`` (i32) The class object its hash id in generated webassembly, so if two object instance its ``class_id`` value equals to each other, that means they have the exactly identical type definition. Comparison between the class_id is equivalent to type comparison in VisualBasic: ``a.GetType() Is b.GetType()``
+ ``flag`` (byte) The field/property data type flag: (0) byte, (1) i32, (2) i64, (3) f32, (4) f64 and (5) reference
+ ``slot`` (i32/i64/f32/f64) The slots hold the class field value. If the field type in VisualBasic is not WebAssembly's primitive type, then a memory pointer will be used as its slot value. Due to the reason of memory pointer is also ``i32`` type in WebAssembly, so that the ``flag`` byte will be used for distinguish the i32 and memory pointer: if the ``flag`` byte equals to 1, means the slot value is ``i32``, else if the ``flag`` byte equals to 5, that means the slot value is a memory pointer.

## Using memory pointer

The memory pointer is a kind of type alias of ``i32``, which its alias name in vanilla compiler is ``intptr``. You can using the memory pointer for read data from WebAssembly memory or get a javascript object from javascript runtime. The javascript object in javascript runtime is managed by ``WebAssembly.ObjectManager`` and you can get the javascript object in js script by access the api ``WebAssembly.ObjectManager.getObject`` and ``WebAssembly.ObjectManager.addObject``.

Important Note: **All of the memory pointer that point to the object in javascript runtime is negative value, and all of the memory pointer that point to the object in WebAssembly runtime is positive value**. So that you can using memory pointer its i32 sign result value to distinguish target object is comes from javascript runtime or WebAssembly runtime.

