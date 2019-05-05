# Difference Between Class And Structure

## Different between memory access

Generally, **the class object and the structure object have no different in memory layout and its definition data model in vanilla WebAssembly compiler**. But the object itself have some different when you reference to a class object value or structure object value. Class object is a kind of reference type and the structure is a kind of value type. So when you assign a class object variable in code, **the vanilla compiler is actually assign an i32 ``intptr`` between variables** as the class object is a kind of reference type. When you assign a structure object between variables in VB.NET code, **the vanilla compiler will allocate a new memory block for copy the value of the fields in your structure object**, as the structure is define as a value type.

So, in other word, the class object is more efficient on memory utilization when compare with structure object.

## Different between array memory layout

Although the memory layout between the class and structure have no different way, but the memory layout of the array that construct base on the class or structure type is extraordinary different.

As the class type is a kind of reference type, then the memory layout of the array that consist with several class object looks like:

```
i32      i32    i32    i32    i32
class_id counts intptr intptr intptr ....
```

Where the array elements just stores the ``intptr`` memory location values for the class objects. But as the structure type is value type, so that the array element of a structure is the actually the value itself, so the memory layout of a structure array looks like:

```
i32      i32    XXX  XXX  XXX 
class_id counts obj1 obj2 obj3 ...
```

### Why make such different in array?

Sometimes, we needs interop between two runtime environment, as the class object is a kind of reference type, it is much efficient than structure it does when utilize the webassembly memory. But there is a problem when we passing the reference type to a javascript api: as a reference type, the actual value that the class object store in a variable is its memory location. So when we pass a class object to a javascript api is actual pass a i32 integer value, not class object itself. Because the i32 memory pointer just pointer to a internal memory location in the webassembly runtime, so such i32 integer value in javascript runtime is meaningless. And such problem is more serious when we needs pass a array of the class object.

But structure object it does not, as the array element is the structure value itself, not its memory location intptr i32 value. so that when we pass a array to a javascript runtime api, then the api can read the webassembly memory by using a buffer object in a very efficient way: as the structure object stores in an array is a continuous memory block data, so the javascript api can read the structure object data 

## Conclusion

+ Structure is mainly design for interop between javascript runtime and webassembly runtime.
+ Class is mainly design for computing in internal webassembly runtime.