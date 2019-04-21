## Welcome To vanillavb.app

```vbnet
Module Demo

    Declare Function Print Lib "console" Alias "log" (text As String) As Integer

    Public Function HelloWorld() As Integer 
        Call Print("Hello World!")
        Return 0
    End Function

End Module
```
