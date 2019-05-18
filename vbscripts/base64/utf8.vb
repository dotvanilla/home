#Region "Microsoft.VisualBasic::e4b8de27a55f3836b8731226dd9c09a2, vbscripts\base64\utf8.vb"

    ' Author:
    ' 
    '       xieguigang (I@xieguigang.me)
    '       asuka (evia@lilithaf.me)
    '       wasm project (developer@vanillavb.app)
    ' 
    ' Copyright (c) 2019 developer@vanillavb.app, VanillaBasic(https://vanillavb.app)
    ' 
    ' 
    ' MIT License
    ' 
    ' 
    ' Permission is hereby granted, free of charge, to any person obtaining a copy
    ' of this software and associated documentation files (the "Software"), to deal
    ' in the Software without restriction, including without limitation the rights
    ' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    ' copies of the Software, and to permit persons to whom the Software is
    ' furnished to do so, subject to the following conditions:
    ' 
    ' The above copyright notice and this permission notice shall be included in all
    ' copies or substantial portions of the Software.
    ' 
    ' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    ' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    ' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    ' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    ' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    ' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    ' SOFTWARE.



    ' /********************************************************************************/

    ' Summaries:

    ' Module utf8
    ' 
    '     Function: utf8_decode, utf8_encode
    ' 
    ' /********************************************************************************/

#End Region

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

        'print($"text length={text.Length}")

        For n As Integer = 0 To text.Length - 1
            Dim r = charCodeAt(text, n)

            'Call print(r)

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

        ' print("View chars after utf8 encode:")
        ' print(chars)

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
