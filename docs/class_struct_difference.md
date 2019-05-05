# Difference Between Class And Structure

## Different between memory access

Generally, **the class object and the structure object have no different in memory layout and its definition data model in vanilla WebAssembly compiler**. But the object itself have some different when you reference to a class object value or structure object value. Class object is a kind of reference type and the structure is a kind of value type. So when you assign a class object variable in code, **the vanilla compiler is actually assign an i32 intptr between variables** as the class object is a kind of reference type. When you assign a structure object between variables in VB.NET code, **the vanilla compiler will allocate a new memory block for copy the value of the fields in your structure object**, as the structure is define as a value type.

So, in other word, the class object is more efficient on memory utilization when compare with structure object.

## Different between array memory layout

Although the memory layout between the class and structure have no different way, but the memory layout of the array that construct base on the class or structure type is extraordinary different.

As the class type is a kind of reference type, then the memory layout of the array that consist with several class object looks like:

```
i32      i32    i32    i32    i32
class_id counts intptr intptr intptr ....
```

Where the array elements just stores the intptr memory location values for the class objects. But as the structre type is value type, so that the array element of a structure is the actually the value itself, so the memory layout of a structre array looks like:

```
i32      i32    XXX  XXX  XXX 
class_id counts obj1 obj2 obj3 ...
```

### Why make such different in array?

