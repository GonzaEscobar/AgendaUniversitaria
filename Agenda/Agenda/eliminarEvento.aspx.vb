Imports ClasesAgenda

Public Class eliminarEvento
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim eventosUsuario As New List(Of Evento)
        Dim idUsuario As Integer
        Dim materia As String
        eventos.Items.Clear()
        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            idUsuario = wsAgenda.obtenerIdUsuario(Request.Cookies("UserSettings")("usuario"))
            eventosUsuario = wsAgenda.obtenerEventos(idUsuario)
            If eventosUsuario IsNot Nothing Then
                For Each evento As Evento In eventosUsuario
                    materia = wsAgenda.obtenerMateria(evento.Materia)
                    eventos.Items.Add(materia + " " + evento.Nombre + " " + evento.Fecha)
                Next
            End If
        Else : Response.Redirect("Loguin.aspx")
        End If

    End Sub

    Protected Sub salir_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Salir.Click

        If (Not Request.Cookies("UserSettings") Is Nothing) Then
            Dim myCookie As HttpCookie
            myCookie = New HttpCookie("UserSettings")
            myCookie.Expires = DateTime.Now.AddDays(-1D)
            Response.Cookies.Add(myCookie)
            Response.Redirect("Loguin.aspx")
        End If

    End Sub

End Class