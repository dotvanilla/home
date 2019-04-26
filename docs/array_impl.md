# Array implementation in WebAssembly

The array in WebAssembly is a block of memory with ``n*sizeof(type)`` memory region. The array is generic in WebAssembly, you can group any type of element into one array, just declare a ``System.Object()`` array in VisualBasic.NET, but this general typed array is not recommended, because the WebAssembly runtime required a lot of internal job for get/set array element between WebAssembly memory and the javascript runtime, this operation will reduce the application's performance dramaticly. 

## Why general array is not recommended

For minimize the performance impact