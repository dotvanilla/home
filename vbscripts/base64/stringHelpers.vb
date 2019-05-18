#Region "Microsoft.VisualBasic::c4ba22d295b1396a1a11044eabadf274, vbscripts\base64\stringHelpers.vb"

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

    ' Module stringHelpers
    ' 
    ' 
    ' 
    ' /********************************************************************************/

#End Region

Imports System.Runtime.CompilerServices

Module stringHelpers

    ''' <summary>
    ''' Create a new regexp pattern object from javascript
    ''' </summary>
    ''' <param name="pattern"></param>
    ''' <returns></returns>
    Declare Function regexp Lib "RegExp" Alias "regexp" (pattern As String, Optional flag$ = "g") As String
    Declare Function fromCharCode Lib "string" Alias "fromCharCode" (c As Integer) As Char

    <Extension>
    Declare Function charCodeAt Lib "string" Alias "charCodeAt" (text As String, index As Integer) As Integer
    <Extension>
    Declare Function charAt Lib "string" Alias "charAt" (text As String, index As Integer) As String

    <Extension>
    Declare Function Join Lib "string" Alias "join" (array As IList, delimiter As String) As String

End Module
