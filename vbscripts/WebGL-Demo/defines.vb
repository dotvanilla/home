Public Module defines
    ' reduced to 10000 for init performance
    Public Const CIRCLE_COUNT = 10000
    Public Const GRID_WIDTH = 70
    Public Const GRID_HEIGHT = 120
End Module

Public Class Circle
    Public x, y, r As Single
End Class

Public Class CircleV
    Public vx, vy As Single
End Class

Public Class CellCircle
    Public circleIndex As Integer
    Public [next] As CellCircle
End Class