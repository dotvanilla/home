# Release history

### 2019-04-26 *v0.6.633-alpha*

##### Compile Your VisualBasic.NET project

+ Supports compile a entire standard VisualBasic.NET project
   + Target VisualBasic.NET project should target ``.NET Framework 4.0`` at least
   + Supports multiple VisualBasic.NET source files in your vbproj
   + WebAssembly file output is located at the file location that defined in your vbproj file with given profile(like ``Debug|AnyCPU`` or ``Release|AnyCPU``).
+ Implementation:
   1. ``&lt;Extension>`` method
   2. Sub Program (Function with no returns)
   3. ``Array``/``List``/``Dictionary`` (map to javascript array and javascript object)
   4. String class methods
   5. ``System.Object`` type as function parameter
   6. Optional function parameter and named parameter sequence
   7. String interpolation syntax

### 2019-04-14 *v0.5.136-alpha*

##### A Very Basically VB.NET WebAssembly Compiler

+ Compile a single VisualBasic.NET source file
+ Implementation: 
   1. Function and function calls
   2. Primitive data types: integer/short/single/double/boolean/string
   3. Programming structure: ``For .. To``, ``Do While Loop``, ``If Then Else``
   4. Javascript Api imports: ``Declare Function Lib Alias ...``
   5. ``Enum`` Type
