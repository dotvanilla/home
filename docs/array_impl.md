# Array implementation in WebAssembly

The array in WebAssembly is a block of memory with ``n*sizeof(type)`` memory region. The array is generic in WebAssembly, you can group any type of element into one array, just declare a ``System.Object()`` array in VisualBasic.NET, but this general typed array is not recommended, because the WebAssembly runtime required a lot of internal job for get/set array element between WebAssembly memory and the javascript runtime, this operation will reduce the application's performance dramaticly. 

## Memory layout of Array

All of the array in WebAssembly is a kind of fixed-size memory region with ``(1 + 4 + n * sizeof(type) + 4)`` bytes.

```R
byte    i32                                      
type length element1 element2 element3 ...
```

Here is the details of this memory layout:

+ type (byte) The data type of the array: (0) object/any, (1) i32, (2) i64, (3) f32, (4) f64 and (5) reference ``class_id``
+ length (i32) The element counts in the array
+ element (type variant) The data size of the element is depend on the type ``byte`` mark:
   1. If type equals to ZERO, then all of the elements is ``i32`` memory pointer for point to any type, from WebAssembly runtime or javascript runtime.
   2. If type equals to 1/2/3/4, then these type mark indicate that element type is primitive, which means the element its value is the actual value. but byte lenegth may be variant as i32 and f32 is 4 bytes and i64 and f64 is 8 bytes in memory. 
   3. If type equals to any other value, then it means array elements is user defined class object, all of the class object read/write just happends in WebAssembly internal.
