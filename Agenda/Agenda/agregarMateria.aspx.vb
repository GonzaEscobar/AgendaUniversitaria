﻿Imports ClasesAgenda

Public Class agregarMateria
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim materiasCarrera As New List(Of Materia)
        materias.Items.Clear()
        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            materiasCarrera = wsAgenda.obtenerMateriasNoInscriptas(Request.Cookies("UserSettings")("usuario"))
            If materiasCarrera IsNot Nothing Then
                For Each materia As Materia In materiasCarrera
                    materias.Items.Add(materia.Nombre)
                Next
            End If
        Else : Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub btnAgregar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregar.Click

    End Sub

    Private Sub agregarMateria_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

        Dim idMateria As Integer
        Dim idUsuario As Integer
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            idUsuario = wsAgenda.obtenerIdUsuario(Request.Cookies("UserSettings")("usuario"))
            For Each materia As ListItem In materias.Items
                If materia.Selected Then
                    idMateria = wsAgenda.obtenerIdMateria(materia.Text)
                    wsAgenda.agregarMateriaAUsuario(idUsuario, idMateria)
                End If

            Next
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