Imports ClasesAgenda

Public Class eliminarEvento
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Dim idUsuario As Integer
        Dim materia As String
        Dim evento As String
        Dim eventosUsuario As New List(Of Evento)
        Dim eliminado As Integer = 1

        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            idUsuario = wsAgenda.obtenerIdUsuario(Request.Cookies("UserSettings")("usuario"))
            eventosUsuario = wsAgenda.obtenerEventos(idUsuario)   
            For Each eventoSeleccionado As ListItem In eventos.Items
                If eventoSeleccionado.Selected Then
                    For Each eventoLista As Evento In eventosUsuario
                        materia = wsAgenda.obtenerMateria(eventoLista.Materia)
                        evento = materia + " " + eventoLista.Nombre + " " + eventoLista.Fecha
                        If evento = eventoSeleccionado.Text Then
                            wsAgenda.quitarEvento(eventoLista.Codigo)
                            eliminado = 1
                        End If
                    Next
                End If
            Next
            If eliminado = 1 Then
                eventosUsuario = wsAgenda.obtenerEventos(idUsuario)
                eventos.Items.Clear()
                eliminado = 0
                If eventosUsuario IsNot Nothing Then
                    For Each eventoACargar As Evento In eventosUsuario
                        materia = wsAgenda.obtenerMateria(eventoACargar.Materia)
                        eventos.Items.Add(materia + " " + eventoACargar.Nombre + " " + eventoACargar.Fecha)
                    Next
                End If
            End If
        Else : Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub salir_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Salir.Click

        If (Not Request.Cookies("UserSettings") Is Nothing) Then
            Dim myCookie As HttpCookie
            myCookie = New HttpCookie("UserSettings")
            myCookie.Expires = DateTime.Now.AddDays(-1D)
            Response.Cookies.Add(myCookie)
            Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub Eliminar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Eliminar.Click

    End Sub

End Class