#Region "Microsoft.VisualBasic::1dcd3a15fbc7383a7256218b812de7e9, vbscripts\WebGL-Demo\Math.vb"

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

    ' Module Math
    ' 
    '     Function: detectCircleCollision
    ' 
    ' /********************************************************************************/

#End Region

Module Math
    Public Function detectCircleCollision(x1!, y1!, r1!, x2!, y2!, r2!) As Boolean
        ' before circle intersection, check bounding box intersection
        If (x1 + r1 < x2 - r2 OrElse x1 - r1 > x2 + r2 OrElse y1 + r1 < y2 - r2 OrElse y1 - r1 > y2 + r2) Then
            Return False
        End If

        ' circle intersection when distance between centers < radius total
        Return Global.System.Math.Sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2) <= r1 + r2
    End Function
End Module
