# Welcome to vanillavb.app

Want run your VisualBasic.NET application in browser?



```vbnet
Module Demo

    Declare Function Print Lib "console" Alias "log" (text As String) As Integer

    Public Function HelloWorld() As Integer 
        Call Print("Hello World!")
        Return 0
    End Function

End Module
```

### Guildlines

Read these documents for help yourself build your first VisualBasic.NET WebAssembly application:

+ [WebAssembly for VisualBasic.NET](/#webassembly)
+ [How to compile](/#use_compiler)

### Demo

These demo shows you how to programming in VB.NET for WebAssembly:

+ [Base64 Encoder/Decoder](/vbscripts/base64.html)