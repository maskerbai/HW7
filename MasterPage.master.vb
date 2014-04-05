
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage




    Protected Sub date_Load(sender As Object, e As EventArgs) Handles [date].Load
        Dim todaydate As Date = Now

        [date].Text = String.Format(todaydate.ToString("d"))
    End Sub
End Class

