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
