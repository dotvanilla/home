Imports System.Runtime.CompilerServices

Module utf8

    ''' <summary>
    ''' 将文本转换为utf8编码的文本字符串
    ''' </summary>
    ''' <param name="text"></param>
    ''' <returns></returns>
    <Extension> Public Function utf8_encode(text As String) As String
        Dim chars As List(Of String) = New List(Of String)

        text = text.Replace(regexp("rn", "g"), "n")

        For n As Integer = 0 To text.Length - 1
            Dim r = charCodeAt(text, n)

            ' Call print(chars)

            If (r < 128) Then
                chars.Add(fromCharCode(r))
            ElseIf (r > 127 AndAlso r < 2048) Then
                chars.Add(fromCharCode(r >> 6 Or 192))
                chars.Add(fromCharCode(r And 63 Or 128))
            Else
                chars.Add(fromCharCode(r >> 12 Or 224))
                chars.Add(fromCharCode(r >> 6 And 63 Or 128))
                chars.Add(fromCharCode(r And 63 Or 128))
            End If
        Next

        Return chars.Join("")
    End Function

    ''' <summary>
    ''' 将utf8编码的文本转换为原来的文本
    ''' </summary>
    ''' <param name="text"></param>
    ''' <returns></returns>
    <Extension> Public Function utf8_decode(text As String) As String
        Dim t As List(Of String) = New List(Of String)
        Dim n = 0
        Dim r = 0
        Dim c2 = 0
        Dim c3 = 0

        Do While (n < text.Length)
            r = text.charCodeAt(n)

            If (r < 128) Then
                t.Add(fromCharCode(r))
                n += 1
            ElseIf (r > 191 AndAlso r < 224) Then
                c2 = text.charCodeAt(n + 1)
                t.Add(fromCharCode((r And 31) << 6 Or c2 And 63))
                n += 2
            Else
                c2 = text.charCodeAt(n + 1)
                c3 = text.charCodeAt(n + 2)
                t.Add(fromCharCode((r And 15) << 12 Or (c2 And 63) << 6 Or c3 And 63))
                n += 3
            End If
        Loop

        Return t.Join("")
    End Function
End Module
