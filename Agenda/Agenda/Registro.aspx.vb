Imports ClasesAgenda

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        btnIngresar.Visible = False

    End Sub

    Protected Sub btnRegistrar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRegistrar.Click

        Dim usuario As New Usuario
        Dim wsAgenda As New ServicioAgendaUniversitaria
        lblUsuario.Text = ""
        lblNombre.Text = ""
        lblContraseña.Text = ""
        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If txtUsuario.Text <> "" And txtContraseña.Text <> "" And txtContraseña.Text = txtConfirmar.Text And txtNombre.Text <> "" Then
            If Not wsAgenda.existeUsuario(txtUsuario.Text) Then
                usuario.Usuario = txtUsuario.Text
                usuario.Nombre = txtNombre.Text
                usuario.Contraseña = txtContraseña.Text
                wsAgenda.agregarUsuario(usuario)
                btnRegistrar.Visible = False
                btnIngresar.Visible = True
                lblRespuesta.Text = "Usuario " + txtUsuario.Text + " Registrado"
                txtUsuario.Text = ""
                txtContraseña.Text = ""
                txtConfirmar.Text = ""
                txtNombre.Text = ""
            Else : lblUsuario.Text = "El usuario ya existe"
            End If
        Else
            If txtUsuario.Text = "" Then
                lblUsuario.Text = "Ingrese un usuario"
            End If
            If txtNombre.Text = "" Then
                lblNombre.Text = "Ingrese un nombre"
            End If
            If txtContraseña.Text = "" Or txtConfirmar.Text = "" Then
                lblContraseña.Text = "Ingrese una contraseña "
            Else : lblContraseña.Text = "Contraseñas distintas"
            End If
        End If

    End Sub


    Protected Sub btnIngresar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnIngresar.Click

        Response.Redirect("Loguin.aspx")

    End Sub

End Class