Imports ClasesAgenda

Public Class Princiapal
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Request.Cookies("UserSettings") Is Nothing) Then
            Response.Redirect("Login.aspx")
        Else : lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
        End If

    End Sub

    'Protected Sub btnDescargarDocumento_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnDescargarDocumento.Click

    '    Response.Redirect("DescargarDocumentos.aspx")

    'End Sub

    'Protected Sub btnAgregarDocumento_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregarDocumento.Click

    '    Response.Redirect("AgregarDocumento.aspx")

    'End Sub


    'Protected Sub btnAgregarMateria_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregarMateria.Click

    '    Response.Redirect("agregarMateria.aspx")

    'End Sub

    Protected Sub salir_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Salr.Click

        If (Not Request.Cookies("UserSettings") Is Nothing) Then
            Dim myCookie As HttpCookie
            myCookie = New HttpCookie("UserSettings")
            myCookie.Expires = DateTime.Now.AddDays(-1D)
            Response.Cookies.Add(myCookie)
            Response.Redirect("Login.aspx")
        End If

    End Sub

    'Protected Sub btnQuitarMateria_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnQuitarMateria.Click

    '    Response.Redirect("quitarMateria.aspx")

    'End Sub

    'Protected Sub btnVerMaterias_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnVerMaterias.Click

    '    Response.Redirect("verMaterias.aspx")

    'End Sub

    'Protected Sub AgregarEvento_Click(ByVal sender As Object, ByVal e As EventArgs) Handles AgregarEvento.Click

    '    Response.Redirect("agregarEvento.aspx")

    'End Sub

    'Protected Sub Eventos_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Eventos.Click

    '    Response.Redirect("verEventos.aspx")

    'End Sub

    'Protected Sub Eventos0_Click(ByVal sender As Object, ByVal e As EventArgs) Handles EliminarEvento.Click

    '    Response.Redirect("eliminarEvento.aspx")

    'End Sub

End Class