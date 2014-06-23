Imports ClasesAgenda

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            Response.Redirect("Principal.aspx")
        End If
    End Sub

    Protected Sub btnRegistrar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnIngresar.Click

        Dim usuario As New Usuario
        Dim wsAgenda As New ServicioAgendaUniversitaria
        If wsAgenda.loguear(txtUsuario.Text, txtPassword.Text) = True Then
            Response.Cookies("UserSettings")("usuario") = txtUsuario.Text
            Response.Redirect("Principal.aspx")
        Else
            lblRespuesta.Text = "Usuario o Password Incorrecto"
        End If

    End Sub

End Class