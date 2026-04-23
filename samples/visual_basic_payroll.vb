Public Class PayrollForm
    Private Sub btnCalc_Click(sender As Object, e As EventArgs)
        Dim salary As Double = 5000
        Dim hours As Double = 44
        Dim ssn As String = txtSSN.Text
        Dim overtime As Double = 0
        If hours > 40 Then
            overtime = (hours - 40) * salary * 1.5
        End If
        MsgBox(salary + overtime)
    End Sub
End Class
