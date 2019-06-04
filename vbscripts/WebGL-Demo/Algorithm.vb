#Region "Microsoft.VisualBasic::29fe469f42a9458824a3da30293e9d3d, vbscripts\WebGL-Demo\Algorithm.vb"

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

    ' Module Algorithm
    ' 
    '     Constructor: (+1 Overloads) Sub New
    ' 
    '     Function: getCircleDataOffset
    ' 
    '     Sub: detectConflicts, init, reset, timeStep, update
    ' 
    ' /********************************************************************************/

#End Region

''' <summary>
''' <see cref="VBMath.Rnd"/> will map to ``Math.random()`` function in javascript
''' </summary>
Module Algorithm

    ''' <summary>
    ''' WebGL的渲染程序主要是读取这个数组的内存数据来完成渲染数据的获取的
    ''' </summary>
    Dim circleData As Circle() = New Circle(CIRCLE_COUNT - 1) {}
    Dim circlevData As CircleV() = New CircleV(CIRCLE_COUNT - 1) {}
    Dim cellCircles As CellCircle() = New CellCircle(CIRCLE_COUNT * 4 - 1) {}
    Dim grid As CellCircle()() = New CellCircle(GRID_WIDTH - 1)() {}

    Sub New()
        For i As Integer = 0 To grid.Length - 1
            grid(i) = New CellCircle(GRID_HEIGHT - 1) {}
        Next
    End Sub

    Public Function getCircleCount() As Integer
        Return CIRCLE_COUNT
    End Function

    ''' <summary>
    ''' 这个函数主要是用于获取得到数组在内存之中的指针位置
    ''' </summary>
    ''' <returns></returns>
    Public Function getCircleDataOffset() As Circle()
        Return circleData
    End Function

    Public Sub init(displayWidth!, displayHeight!)
        For i As Integer = 0 To CIRCLE_COUNT - 1
            Dim collision As Boolean
            Dim x, y, r As Single
            Do
                collision = False
                x = displayWidth * VBMath.Rnd
                y = displayHeight * VBMath.Rnd
                ' size of 0.5 - 128, exponentially distributed (maximum gl_POINT render size)
                r = System.Math.Ceiling(System.Math.Exp(VBMath.Rnd * 8) / 23.2887)

                ' ensure within window bounds
                If (displayWidth - (x + r) < 0) OrElse (x - r < 0) OrElse (displayHeight - (y + r) < 0) OrElse (y - r < 0) Then
                    collision = True
                Else
                    ' ensure no collisions for starting position
                    For j As Integer = 0 To i - 1
                        If (detectCircleCollision(x, y, r, circleData(j).x, circleData(j).y, circleData(j).r)) Then
                            collision = True
                            Exit For
                        End If
                    Next
                End If

            Loop While collision

            circleData(i).x = x
            circleData(i).y = y
            circleData(i).r = r

            ' velocity of -0.1 - +0.1 pixels / iteration
            circlevData(i).vx = (VBMath.Rnd - 0.5) * 0.1
            circlevData(i).vy = (VBMath.Rnd - 0.5) * 0.1
        Next
    End Sub

    Private Sub reset()
        For p As Integer = 0 To GRID_WIDTH - 1
            Dim row = grid(p)

            For q As Integer = 0 To GRID_HEIGHT - 1
                row(q) = Nothing
            Next
        Next
    End Sub

    Private Sub update(displayWidth!, displayHeight!)
        Dim cellCircleCount = 0

        For i As Integer = 0 To CIRCLE_COUNT - 1
            Dim xi = circleData(i).x
            Dim yi = circleData(i).y
            Dim ri = circleData(i).r

            Dim vxi = circlevData(i).vx
            Dim vyi = circlevData(i).vy

            ' gravity
            vyi += 0.0001

            ' window bounds
            If (displayWidth - (xi + ri) < 0 AndAlso vxi > 0 OrElse xi - ri < 0 AndAlso vxi < 0) Then
                vxi = -vxi
            End If
            If (displayHeight - (yi + ri) < 0 AndAlso vyi > 0 OrElse yi - ri < 0 AndAlso vyi < 0) Then
                vyi = -vyi
            End If

            circleData(i).x = xi + vxi
            circleData(i).y = yi + vyi
            circlevData(i).vx = vxi
            circlevData(i).vy = vyi

            Dim leftCol As Integer = System.Math.Floor((xi - ri) / displayWidth * GRID_WIDTH)
            Dim rightCol As Integer = System.Math.Floor((xi + ri) / displayWidth * GRID_WIDTH)
            Dim topRow As Integer = System.Math.Floor((yi - ri) / displayHeight * GRID_HEIGHT)
            Dim bottomRow As Integer = System.Math.Floor((yi + ri) / displayHeight * GRID_HEIGHT)

            If (leftCol < 0) Then
                leftCol = 0
            End If
            If (rightCol >= GRID_WIDTH) Then
                rightCol = GRID_WIDTH - 1
            End If
            If (topRow < 0) Then
                topRow = 0
            End If
            If (bottomRow >= GRID_HEIGHT) Then
                bottomRow = GRID_HEIGHT - 1
            End If

            For p2 As Integer = leftCol To rightCol
                Dim row1 = grid(p2)

                For q2 As Integer = topRow To bottomRow
                    Dim cellCircle = cellCircles(cellCircleCount)
                    cellCircleCount += 1
                    cellCircle.circleIndex = i
                    cellCircle.next = row1(q2)
                    row1(q2) = cellCircle
                Next
            Next
        Next
    End Sub

    Private Sub detectConflicts()
        For p1 As Integer = 0 To GRID_WIDTH - 1
            Dim row2 As CellCircle() = grid(p1)

            For q1 As Integer = 0 To GRID_HEIGHT - 1
                Dim iCellCircle = row2(q1)

                Do While Not iCellCircle Is Nothing
                    Dim index = iCellCircle.circleIndex

                    Dim xi = circleData(index).x
                    Dim yi = circleData(index).y
                    Dim ri = circleData(index).r

                    Dim vxi = circlevData(index).vx
                    Dim vyi = circlevData(index).vy

                    Dim jCellCircle = iCellCircle

                    jCellCircle = jCellCircle.next

                    Do While Not jCellCircle Is Nothing
                        Dim j = jCellCircle.circleIndex

                        Dim xj = circleData(j).x
                        Dim yj = circleData(j).y
                        Dim rj = circleData(j).r

                        If (detectCircleCollision(xi, yi, ri, xj, yj, rj)) Then
                            Dim vxj = circlevData(j).vx
                            Dim vyj = circlevData(j).vy

                            ' calculate collision unit vector
                            Dim collDx = xj - xi
                            Dim collDy = yj - yi
                            Dim collLen = System.Math.Sqrt(collDx * collDx + collDy * collDy)
                            collDx = collDx / collLen
                            collDy = collDy / collLen

                            ' dot product of unit collision vector with velocity vector gives
                            ' 1d collision velocities before collision along collisionv vector
                            Dim cui = collDx * vxi + collDy * vyi
                            Dim cuj = collDx * vxj + collDy * vyj

                            ' skip collision if moving away from eachother
                            If Not (cui - cuj <= 0) Then
                                ' we then use 1d elastic collision equations
                                ' to get resultant 1d velocities after collision
                                ' (https://en.wikipedia.org/wiki/Elastic_collision)
                                Dim massSum = ri + rj
                                Dim massDiff = ri - rj
                                Dim cvi = (cui * massDiff + 2 * rj * cuj) / massSum
                                Dim cvj = (2 * ri * cui - cuj * massDiff) / massSum

                                ' calculate the collision velocity change
                                Dim dcvi = cvi - cui
                                Dim dcvj = cvj - cuj

                                ' apply that velocity change dotted with the collision unit vector
                                ' to the original velocities
                                circlevData(index).vx = vxi + collDx * dcvi
                                circlevData(index).vy = vyi + collDy * dcvi
                                circlevData(j).vx = vxj + collDx * dcvj
                                circlevData(j).vy = vyj + collDy * dcvj

                                jCellCircle = jCellCircle.next
                            End If
                        Else
                            jCellCircle = jCellCircle.next
                        End If
                    Loop

                    iCellCircle = iCellCircle.next
                Loop
            Next
        Next
    End Sub

    Public Sub timeStep(displayWidth!, displayHeight!)
        Call reset()
        Call update(displayWidth, displayHeight)
        Call detectConflicts()
    End Sub
End Module
