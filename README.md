# Welcome to .vanilla Framework

Want run your VisualBasic.NET application in browser? Just follow this quick hello world example:

First you should have a VisualBasic.NET for compile, you can create a standard vbproj in VisualStudio target .NET Framework 4.0 at least, and then write this HelloWorld demo, and then save it. 

```vbnet
Module Demo

    Declare Function Print Lib "console" Alias "log" (text As String) As Integer

    Public Function HelloWorld() As Integer 
        Call Print("Hello World!")
        Return 0
    End Function

End Module
```

Now, you can compile your VisualBasic.NEt application for target WebAssembly, by using vanilla compiler:

```bash
# compile your project in the commandline
# and you should add the vanilla folder to your path environment variables.
vanilla /path/to/app.vbproj
```

Just simple enough! Finally, add script reference to ``visualbasic.wasm.js``, then using this loader javascript to run your VisualBasic.NEt application:

```javascript
var assmUrl = "vbscript/HelloWorld.wasm";

TypeScript.Wasm.RunAssembly(assmUrl, {
    // run app from a public method which its name is
    // RunApp or something else
    run: VB => VB.RunApp(),
    // some build-in javascript api that expose to VB.NET application
    api: { console: true },
    // Other javascript api expose to VB.NET application, like jquery, bootstrap, etc
    imports: {}
});
```

Hit ``F12`` on your keyboard to open developer console of your web browser, then you can see a ``Hello World!`` message. 

### Guildlines

Read these documents for help yourself build your first VisualBasic.NET WebAssembly application:

+ [WebAssembly for VisualBasic.NET](/#webassembly)
+ [How to compile](/#use_compiler)

### Demo

These demo shows you how to programming in VB.NET for WebAssembly:

+ [Base64 Encoder/Decoder](/vbscripts/base64.html)
+ [VB.NET programming with WebGL](/vbscripts/webgl.html)

### Release Notes

Find changes and update content of the ``vanillavb.app`` runtime at this document:

> [Vanilla Release Note](/#release_notes)