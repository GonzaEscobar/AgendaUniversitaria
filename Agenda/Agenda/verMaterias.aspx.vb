Imports ClasesAgenda

Public Class verMaterias
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim materiasCarrera As New List(Of Materia)
        Dim filaMateria As DataRow
        Dim tabla As New DataTable
        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            tabla.Columns.Add("Materia")
            materiasCarrera = wsAgenda.obtenerMateriasInscriptas(Request.Cookies("UserSettings")("usuario"))
            If materiasCarrera IsNot Nothing Then
                For Each materia As Materia In materiasCarrera
                    filaMateria = tabla.NewRow()
                    filaMateria("Materia") = materia.Nombre
                    tabla.Rows.Add(filaMateria)
                Next
                grdMaterias.DataSource = tabla
                grdMaterias.DataBind()
            Else : lblRespuesta.Text = "No se encuentra anotado en ninguna materia"
            End If
        Else : Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick

        If Menu1.SelectedItem.Text = "Salir" Then
            If (Not Request.Cookies("UserSettings") Is Nothing) Then
                Dim myCookie As HttpCookie
                myCookie = New HttpCookie("UserSettings")
                myCookie.Expires = DateTime.Now.AddDays(-1D)
                Response.Cookies.Add(myCookie)
                Response.Redirect("Login.aspx")
            End If
        End If

    End Sub

    Protected Sub Salr_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Salr.Click

        If (Not Request.Cookies("UserSettings") Is Nothing) Then
            Dim myCookie As HttpCookie
            myCookie = New HttpCookie("UserSettings")
            myCookie.Expires = DateTime.Now.AddDays(-1D)
            Response.Cookies.Add(myCookie)
            Response.Redirect("Login.aspx")
        End If

    End Sub

End Class