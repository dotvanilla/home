# Welcome to .vanilla Framework

Wanna run your VisualBasic.NET application in a browser? Please follow this quick **hello world** example:

First you should have a VisualBasic.NET project for compile into WebAssembly. You can create a standard vbproj in VisualStudio and should target .NET Framework 4.0 at least, and then copy this ``HelloWorld`` demo, and then save it. 

```vbnet
Module Demo

    Declare Function Print Lib "console" Alias "log" (text As String) As Integer

    Public Function HelloWorld() As Integer 
        Call Print("Hello World!")
        Return 0
    End Function

End Module
```

Now, you can compile your VisualBasic.NET application for target WebAssembly platform, by use ``vanilla`` compiler:

```bash
# compile your project in the commandline
# and you should add the vanilla folder to your path environment variables.
vanilla /path/to/app.vbproj
```

Just simply enough! Finally, add script reference to ``visualbasic.wasm.js`` in your web application, and then using this loader javascript code to run your VisualBasic.NET application in web browser or nodejs environment:

```javascript
var assmUrl = "vbscript/HelloWorld.wasm";

vanilla.Wasm.RunAssembly(assmUrl, {
    // run app from a public method which its name is
    // HelloWorld or something else
    run: VB => VB.HelloWorld(),
    // some build-in javascript api that expose to VB.NET application
    api: { console: true },
    // Other javascript api expose to VB.NET application, like jquery, bootstrap, etc
    imports: {}
});
```

Hit ``F12`` on your keyboard to open developer console of your web browser, then you will see the ``Hello World!`` message from your VB.NET application.

### Guildlines

Read these documents for help yourself build your first VisualBasic.NET WebAssembly application:

+ [WebAssembly for VisualBasic.NET](/#webassembly)
+ [How to compile](/#use_compiler)

Documents about how to develop Vanilla compiler:

+ [Vanilla compiler design note](/#compiler_design_notes)
+ [Class implementation in WebAssembly](/#class_impl)
+ [Array implementation in WebAssembly](/#array_impl)

### Demo

These demo shows you how to programming in VB.NET for WebAssembly:

+ [Base64 Encoder/Decoder](/vbscripts/base64.html)
+ [VB.NET programming with WebGL](/vbscripts/webgl.html)

### Release Notes

Find changes and update content of the ``vanillavb.app`` runtime at this document:

> [Vanilla Release Note](/#release_notes)