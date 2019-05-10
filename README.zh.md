# 欢迎使用.vanilla框架

希望能够让你的VisualBasic.NET应用程序运行在一个现代的浏览器之中么？请通过下面的一个简单的**hello world**例子来学习吧：

首先，你应当拥有一个VisualBasic.NET应用程序源代码项目来编译为WebAssembly应用程序。你可以在VisualStudio之中创建一个标准的桌面应用程序，并且这个项目应该至少需求.NET Framework 4.0版本。然后复制下面的``HelloWorld``示例代码，然后在VisualStudio之中进行保存。 

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

### 学习指引

**Vanilla框架是什么？** Vanilla框架是一个专门为VisualBasic.NET语言开发编写的WebAssembly运行时框架以及编译器平台，Vanilla编译器平台是基于.NET平台上的Roslyn语言分析服务的一个编译器项目。在Vanilla框架之中，包含有一个最基础的VB.NET应用程序的WebAssembly模块的加载程序，以及对一些最基础的JavaScript Api映射到.NET Api的封装，还包括一个能够将你的VisualBasic.NET项目编译为WebAssembly模块的编译器。

阅读这些文档来帮助你构建出你的第一个运行在WebAssembly平台上面的VisualBasic.NET应用程序：

+ [初步了解Vanilla以及一些简单问答](#webassembly)
+ [如何使用Vanilla编译器](#use_compiler)

在这里有一些关于如何设计以及开发Vanilla编译器平台的技术文档：

+ [Vanilla compiler design note](#compiler_design_notes)
+ [Class implementation in WebAssembly](#class_impl)
+ [Array implementation in WebAssembly](#array_impl)
+ [Difference Between Class And Structure](#class_struct_difference)

### 示例项目

下面的这些Demo向你展示了如何编写一个面向WebAssembly平台的VisualBasic.NET应用程序：

+ [Base64 Encoder/Decoder](/vbscripts/base64.html)
  > 这个Demo通过创建一个Web应用程序来向你展示了Vanilla编译器平台目前所支持的一些VIsualBasic.NET语言的一些基础的语法特性，例如：数组，for循环，函数，if分支，多模块应用程序等。
+ [VB.NET programming with WebGL](/vbscripts/webgl.html)
  > 你可以通过这个WebGL编程示例来学习如何应用VisualBasic.NET进行移动平台的游戏开发，在这个Demo之中你将可以学习WebGL的一些基础的Api调用。

### 发行文档

阅读下面的文档来了解新版本的``vanillavb.app``框架的更新内容：

> [Vanilla Release Note](#release_notes)