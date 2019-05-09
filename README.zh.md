# 欢迎使用.vanilla框架

Wanna run your VisualBasic.NET application in a browser? Please follow this quick **hello world** example:

First you should have a VisualBasic.NET project for compile into WebAssembly. You can create a standard vbproj in VisualStudio and should target .NET Framework 4.0 at least, and then copy this ``HelloWorld`` demo, and then save it. 

```vbnet
' A WebAssembly application should contains one code module at least.
Module Demo

    ''' <summary>
    ''' Imports a external api function from javascript runtime
    ''' </summary>
    ''' <param name="text">The text message for display on the webbrowser debugger console</param>
    ''' <returns></returns>
    Declare Function Print Lib "console" Alias "log" (text As String) As Integer

    ''' <summary>
    ''' Write the app logic code in any function, and then mark it Public 
    ''' Then this public function will be export from your WebAssembly to 
    ''' javascript runtime.
    ''' </summary>
    ''' <returns></returns>
    Public Function HelloWorld() As Integer 
        Call Print("Hello World!")
        Return 0
    End Function

End Module
```

现在，你可以通过使用``vanilla``编译器来将你的VisualBasic.NET应用程序编译为可以在WebAssembly平台上所运行的App了：

```bash
# compile your project in the commandline
# and you should add the vanilla folder to your path environment variables.
vanilla /path/to/app.vbproj
```

整个过程非常的简单！最后，在你的Web应用程序之中添加对``visualbasic.wasm.js``脚本的文件引用，然后使用下面的javascript加载器程序代码在Web应用或者nodejs环境之中来启动你的VisualBasic.NET应用程序：

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

敲击你的键盘上面的 ``F12`` 按键来打开你的浏览器的开发人员调试终端，然后你将会看见在终端上面输出的一条来自于你的VB.NET应用程序的``Hello World!``消息输出。

### Guildlines

Read these documents for help yourself build your first VisualBasic.NET WebAssembly application:

+ [WebAssembly for VisualBasic.NET](/#webassembly)
+ [How to compile](/#use_compiler)

Documents about how to develop Vanilla compiler:

+ [Vanilla compiler design note](/#compiler_design_notes)
+ [Class implementation in WebAssembly](/#class_impl)
+ [Array implementation in WebAssembly](/#array_impl)
+ [Difference Between Class And Structure](/#class_struct_difference)

### Demo

These demo shows you how to programming in VB.NET for WebAssembly:

+ [Base64 Encoder/Decoder](/vbscripts/base64.html)
  > This demo shows you how to create a web app module with some basic programming features in VisualBasic.NET language, like: array, for...loop, function, if...branch, multiple modules, etc. 
+ [VB.NET programming with WebGL](/vbscripts/webgl.html)

### Release Notes

Find changes and update content of the ``vanillavb.app`` runtime at this document:

> [Vanilla Release Note](/#release_notes)