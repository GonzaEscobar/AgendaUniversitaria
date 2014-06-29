Imports ClasesAgenda

Public Class agregarEvento
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria
    Dim materia As String
    Dim evento As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblMateria.Text = ""
        lblEvento.Text = ""
        lblFecha.Text = ""
        lblRespuesta.Text = ""
        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            If evento = "" Then
                cargarEventos()
            End If
            If materia = "" Then
                cargarMaterias()
            End If
        Else : Response.Redirect("Login.aspx")
        End If
    End Sub

    Protected Sub btnAgregar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregar.Click

        Dim idUsuario As Integer
        Dim idMateria As Integer
        Dim eventoNuevo As New Evento
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            If materia <> "-Por favor seleccione-" And evento <> "-Por favor seleccione-" And calFecha.SelectedDate.Date > calFecha.TodaysDate Then
                idUsuario = wsAgenda.obtenerIdUsuario(Request.Cookies("UserSettings")("usuario"))
                idMateria = wsAgenda.obtenerIdMateria(materia)
                lblRespuesta.Text = "Evento agregado con exito"
                eventoNuevo.Nombre = evento
                eventoNuevo.Fecha = calFecha.SelectedDate
                eventoNuevo.Usuario = idUsuario
                eventoNuevo.Materia = idMateria
                wsAgenda.agregarEvento(eventoNuevo)
                calFecha.SelectedDate = calFecha.TodaysDate
                cargarMaterias()
                cargarEventos()
            Else
                If materia = "-Por favor seleccione-" Then
                    lblMateria.Text = "Seleccione una Materia"
                End If
                If evento = "-Por favor seleccione-" Then
                    lblEvento.Text = "Seleccione un evento"
                End If
                If calFecha.SelectedDate.Date <= calFecha.TodaysDate Then
                    lblFecha.Text = " Ingrese una fecha"
                End If
            End If
        End If

    End Sub

    Private Sub agregarEvento_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

        materia = materias.Text
        evento = eventos.Text
       
    End Sub

    Private Sub cargarMaterias()

        Dim materiasInscriptas As List(Of Materia)
        materias.Items.Clear()
        materias.Items.Add("-Por favor seleccione-")
        materiasInscriptas = wsAgenda.obtenerMateriasInscriptas(Request.Cookies("UserSettings")("usuario"))
        If materiasInscriptas IsNot Nothing Then
            For Each materia As Materia In materiasInscriptas
                materias.Items.Add(materia.Nombre)
            Next
        End If

    End Sub

    Private Sub cargarEventos()

        eventos.Items.Clear()
        eventos.Items.Add("-Por favor seleccione-")
        eventos.Items.Add("Parcial")
        eventos.Items.Add("Recuperatorio")
        eventos.Items.Add("Entrega de TP")
        eventos.Items.Add("Final")

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