# Vanilla compiler design note

Due to the reason of WebAssembly is aim at high intensity computing on client side, and just have 4 primitive type for build a math algorithm application currently. So in Vanilla compile must introduce some type alias for abstract high level programing feature in VisualBasic.NET programming.

## Data types in Vanilla compiler

Except the 4 primitive type in WebAssembly, there are some type alias in Vanilla compiler for abstract some high level VisualBasic.NET prograaming features, these type alias are:

| Type alias | VisualBasic.NET types             | Actual Type | TypeScript Mapping |
|------------|-----------------------------------|-------------|--------------------|
| char*      | ``System.String``/``System.Char`` | ``i32``     | ``string``         |
| intptr     | All of user defined types         | ``i32``     | ``object/any``     |
| any        | ``System.Object``                 | ``i32``     | ``object``         |
| array      | ``System.Array``                  | ``i32``     | ``array``          |
| list       | ``List(Of ...)``                  | ``i32``     | ``array``          |
| table      | ``Dictionary(Of String, ...)``    | ``i32``     | ``object``         |
| boolean    | ``Boolean``                       | ``i32``     | ``boolean``        |