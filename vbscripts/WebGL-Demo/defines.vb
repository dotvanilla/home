#Region "Microsoft.VisualBasic::f19130ef5330e5abffec88fa7cee6f25, vbscripts\WebGL-Demo\defines.vb"

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

    ' Module defines
    ' 
    ' 
    ' 
    ' Class Circle
    ' 
    ' 
    ' 
    ' Class CircleV
    ' 
    ' 
    ' 
    ' Class CellCircle
    ' 
    ' 
    ' 
    ' /********************************************************************************/

#End Region

Public Module defines
    ' reduced to 10000 for init performance
    Public Const CIRCLE_COUNT = 100
    Public Const GRID_WIDTH = 70
    Public Const GRID_HEIGHT = 120
End Module

Public Structure Circle
    Public x, y, r As Single
End Structure

Public Class CircleV
    Public vx, vy As Single
End Class

Public Class CellCircle
    Public circleIndex As Integer
    Public [next] As CellCircle
End Class
