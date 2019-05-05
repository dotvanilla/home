# Vanilla compiler design note

Due to the reason of WebAssembly is aim at high intensity computing on client side, and just have 4 primitive type for build a math algorithm application currently. So in Vanilla compiler must introduce some type alias for abstract high level programing feature in VisualBasic.NET programming.

## Data types in Vanilla compiler

Except the 4 primitive type in WebAssembly, there are several type alias in Vanilla compiler for abstract some high level VisualBasic.NET programming features, these type alias are:

| Type alias | VisualBasic.NET types             | Actual Type | TypeScript Mapping |
|------------|-----------------------------------|-------------|--------------------|
| string     | ``System.String``/``System.Char`` | ``i32``     | ``string``         |
| intptr     | All of user defined types         | ``i32``     | ``object/any``     |
| any        | ``System.Object``                 | ``i32``     | ``object``         |
| array      | ``System.Array``                  | ``i32``     | ``array``          |
| list       | ``List(Of ...)``                  | ``i32``     | ``array``          |
| table      | ``Dictionary(Of String, ...)``    | ``i32``     | ``object``         |
| boolean    | ``Boolean``                       | ``i32``     | ``boolean``        |
| void       | ``System.Void``                   | none        | none               |

> A ``void`` type in compiler type alias is apply for solve the ``S-Expression`` stack problem in a block or a function returns no value. The Vanilla compiler depend on this ``void`` type for decided to add a ``drop`` operator at the begining of the auto-generated ``S-Expression`` or not. For more details information about such design, please read this github issue: **https://github.com/WebAssembly/wabt/issues/1067**.  

### Notes

1. The ``intptr`` type is a kind of memory pointer for indicate the start position of the class type meta data which is parsed from your VisualBasic.NET source file. You can treat the ``intptr`` data type in vanilla type alias system as the ``class_id`` or ``hash code`` of the ``System.Type`` in .NET Framework.

2. The table type is a kind of javascript object which map from the ``Dictionary`` type in VB.NET. The data type of the key in ``Dictionary`` only supports ``string``.

3. Actually the ``array`` and ``list`` is almost the same data type in vanilla, as the array and the list is created based on the javascript array object.