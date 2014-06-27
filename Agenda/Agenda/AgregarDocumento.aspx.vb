Imports ClasesAgenda

Public Class AgregarDocumento
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria
    Dim materiaSeleccionada As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            If materiaSeleccionada = "" Then

                cargarMaterias()
            End If
        Else : Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub btnAgregar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregar.Click

        Dim documento As New Documento
        Dim materia As New Materia
        lblMateria.Text = ""
        lblLink.Text = ""
        lblNombre.Text = ""
        If materiaSeleccionada <> "-Por favor seleccione-" And txtNombre.Text <> "" And txtLink.Text <> "" Then
            documento.Link = txtLink.Text
            documento.Nombre = txtNombre.Text
            materia.Codigo = wsAgenda.obtenerIdMateria(materiaSeleccionada)
            documento.Materia = materia
            documento.Usuario = wsAgenda.obtenerIdUsuario(Request.Cookies("UserSettings")("usuario"))
            wsAgenda.agregarDocumento(documento)
            lblRespuesta.Text = "Documento agregado correctamente"
            txtLink.Text = ""
            txtNombre.Text = ""
            lblRespuestaLink.Text = ""
            cargarMaterias()
            btnAgregar.Enabled = False
        Else
            If txtLink.Text = "" Then
                lblLink.Text = "Ingrese un link al documento"
            End If
            If materiaSeleccionada = "-Por favor seleccione-" Then
                lblMateria.Text = "Seleccione una materia"
            End If
            If txtNombre.Text = "" Then
                lblNombre.Text = "Ingrese un nombre para el documento"
            End If
        End If

    End Sub

    Private Sub Page_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

        materiaSeleccionada = materias.Text

    End Sub

    Private Sub cargarMaterias()

        Dim materiasCarrera As List(Of Materia)
        materiasCarrera = wsAgenda.obtenerMaterias()
        materias.Items.Clear()
        materias.Items.Add("-Por favor seleccione-")
        For Each materia As Materia In materiasCarrera
            materias.Items.Add(materia.Nombre)
        Next

    End Sub

    Protected Sub btnProbarLink_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnProbarLink.Click

        Dim sUrl As String = txtLink.Text
        Dim sScript As String = "<script language =javascript> "
           
        If txtLink.Text = "" Then
            lblRespuestaLink.ForeColor = Drawing.Color.Red
            lblRespuestaLink.Text = "Ingrese un link para probar"
        Else
            lblRespuestaLink.ForeColor = Drawing.Color.GreenYellow
            lblRespuestaLink.Text = "Link Correcto"
            btnAgregar.Enabled = True
            sScript += "window.open('" & sUrl & "',null,'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=1,width=500,height=300,left=100,top=100');"
            sScript += "</script> "
            Response.Write(sScript)
            
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

End Class