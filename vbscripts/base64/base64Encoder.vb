''' <summary>
''' A demo of VB.NET general programming features in WebAssembly
''' 
''' 1. extension function is supported
''' 2. array is supported
''' 3. numeric operators is supported
''' 4. if/for/while control flow is supported
''' 5. string operation is supported
''' </summary>
Public Module base64Encoder

    Dim keyStr As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    Declare Function isNaN Lib "Math" Alias "isNaN" (x As Integer) As Boolean
    Declare Sub print Lib "console" Alias "log" (obj As Object)

    ''' <summary>
    ''' 将任意文本编码为base64字符串
    ''' </summary>
    ''' <param name="text"></param>
    ''' <returns></returns>
    Public Function encode(text As String) As String
        Dim base64 As List(Of String) = New List(Of String)
        Dim n, r, i, s, o, u, a As Integer
        Dim f = 0

        text = text.utf8_encode()

        Do While (f < text.Length)
            n = text.charCodeAt(f)
            f += 1
            r = text.charCodeAt(f)
            f += 1
            i = text.charCodeAt(f)
            f += 1
            s = n >> 2
            o = (n And 3) << 4 Or r >> 4
            u = (r And 15) << 2 Or i >> 6
            a = i And 63

            If (isNaN(r)) Then
                a = 64
                u = a
            ElseIf (isNaN(i)) Then
                a = 64
            End If

            base64.Add(keyStr.charAt(s))
            base64.Add(keyStr.charAt(o))
            base64.Add(keyStr.charAt(u))
            base64.Add(keyStr.charAt(a))
        Loop

        Return base64.Join("")
    End Function

    Public Function decode(base64 As String) As String
        Dim text = ""
        Dim n, r, i As Integer
        Dim s, o, u, a As Integer
        Dim f = 0
        Dim symbolsNotallowed As Integer = regexp("[^A-Za-z0-9+/=]", "g")

        base64 = base64.Replace(symbolsNotallowed, "")

        Do While (f < base64.Length)
            s = keyStr.IndexOf(base64.charAt(f))
            f += 1
            o = keyStr.IndexOf(base64.charAt(f))
            f += 1
            u = keyStr.IndexOf(base64.charAt(f))
            f += 1
            a = keyStr.IndexOf(base64.charAt(f))
            f += 1

            n = s << 2 Or o >> 4
            r = (o And 15) << 4 Or u >> 2
            i = (u And 3) << 6 Or a
            text = text & fromCharCode(n)

            If (u <> 64) Then
                text = text & fromCharCode(r)
            End If
            If (a <> 64) Then
                text = text & fromCharCode(i)
            End If
        Loop

        text = text.utf8_decode()

        Return text
    End Function
End Module
