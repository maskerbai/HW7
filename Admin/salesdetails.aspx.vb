
Partial Class Admin_salesdetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView2.ItemDeleted
        Response.Write("The record has been deleted from the database.")
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView2.ItemInserted
        Response.Redirect("saleslist.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView2.ItemUpdated
        Response.Redirect("saleslist.aspx")
    End Sub
End Class
