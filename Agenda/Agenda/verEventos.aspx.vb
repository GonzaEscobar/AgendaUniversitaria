Imports ClasesAgenda

Public Class verEventos
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

    Private Sub verEventos_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

        materiaSeleccionada = materias.Text

    End Sub

    Protected Sub btnMostrar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnMostrar.Click

        Dim eventos As New List(Of Evento)
        Dim filaEvento As DataRow
        Dim tabla As New DataTable
        Dim idUsuario As Integer
        Dim idMateria As Integer
        lblRespuesta.Text = ""
        If materiaSeleccionada <> "-Por favor seleccione-" Then
            grdEventos.DataBind()
            tabla.Columns.Add("Evento")
            tabla.Columns.Add("Fecha")
            idUsuario = wsAgenda.obtenerIdUsuario(Request.Cookies("UserSettings")("usuario"))
            idMateria = wsAgenda.obtenerIdMateria(materiaSeleccionada)
            eventos = wsAgenda.obtenerEventosPorMateria(idUsuario, idMateria)
            If eventos IsNot Nothing Then
                For Each evento As Evento In eventos
                    filaEvento = tabla.NewRow()
                    filaEvento("Evento") = evento.Nombre
                    filaEvento("Fecha") = evento.Fecha
                    tabla.Rows.Add(filaEvento)
                Next
                grdEventos.DataSource = tabla
                grdEventos.DataBind()
            Else : lblRespuesta.Text = " No hay eventos para mostrar"
            End If
        Else : Response.Redirect("Login.aspx")
        End If

    End Sub

    Private Sub cargarMaterias()

        Dim materiasInscriptas As New List(Of Materia)
        materiasInscriptas = wsAgenda.obtenerMateriasInscriptas(Request.Cookies("UserSettings")("usuario"))
        materias.Items.Clear()
        materias.Items.Add("-Por favor seleccione-")
        If materiasInscriptas IsNot Nothing Then
            For Each materia As Materia In materiasInscriptas
                materias.Items.Add(materia.Nombre)
            Next
        Else : lblRespuesta.Text = " No hay eventos para mostrar"
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