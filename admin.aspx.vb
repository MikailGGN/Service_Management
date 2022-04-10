
Partial Class admin
    Inherits System.Web.UI.Page
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetAllowResponseInBrowserHistory(False)

        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetNoStore()

    End Sub
End Class
