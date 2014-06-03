Imports ClasesAgenda

Public Class Documentos
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria
    Dim materiaSeleccionada As String
    Dim materia As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            lblLogueado.Text = Request.Cookies("UserSettings")("usuario")
            If materiaSeleccionada = "" Then
                cargarMaterias()
            End If
        Else : Response.Redirect("Loguin.aspx")
        End If

    End Sub

    Protected Sub btnBuscar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnBuscar.Click

        Dim documentos As New List(Of Documento)
        Dim filaDocumento As DataRow
        Dim tabla As New DataTable
        Dim link As New HyperLinkColumn
        grdDocumentos.DataBind()
        lblLink.Text = ""
        If materias IsNot Nothing And materiaSeleccionada <> "" And materiaSeleccionada <> "-Por favor seleccione-" Then
            documentos = wsAgenda.obtenerDocumentos(materiaSeleccionada)
            If documentos IsNot Nothing Then
                tabla.Columns.Add("ID")
                tabla.Columns.Add("Descripción")
                tabla.Columns.Add("Cantidad de descargas")
                tabla.Columns.Add("Subido por el usuario")
                For Each documento As Documento In documentos
                    filaDocumento = tabla.NewRow()
                    filaDocumento("ID") = documento.Codigo
                    filaDocumento("Descripción") = documento.Nombre
                    filaDocumento("Cantidad de descargas") = documento.Descargas
                    filaDocumento("Subido por el usuario") = wsAgenda.obtenerNombreUsuario(documento.Usuario)
                    tabla.Rows.Add(filaDocumento)
                Next
                grdDocumentos.DataSource = tabla
                grdDocumentos.DataBind()
            End If
        End If

    End Sub


    Private Sub Documentos_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

        materiaSeleccionada = materias.Text

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

    Protected Sub grdDocumentos_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles grdDocumentos.SelectedIndexChanged

        Dim id As Integer
        Dim documentos As New List(Of Documento)
        documentos = wsAgenda.obtenerDocumentos(materiaSeleccionada)
        id = grdDocumentos.Rows(grdDocumentos.SelectedIndex).Cells(1).Text
        For Each documento As Documento In documentos
            If documento.Codigo = id Then
                Try
                    Dim proceso As New System.Diagnostics.Process
                    With proceso
                        .StartInfo.FileName = documento.Link
                        .Start()
                        lblLink.Text = ""
                    End With
                    wsAgenda.actualizarDescargas(documento.Codigo, documento.Descargas + 1)
                    grdDocumentos.Rows(grdDocumentos.SelectedIndex).Cells(3).Text = documento.Descargas + 1
                Catch ex As Exception
                    lblLink.Text = "Documento inaccesible"
                End Try
            End If
        Next
        grdDocumentos.SelectedIndex = -1

    End Sub

    Private Sub cargarMaterias()

        Dim materiasInscriptas As New List(Of Materia)
        materias.Items.Clear()
        materias.Items.Add("-Por favor seleccione-")
        materiasInscriptas = wsAgenda.obtenerMateriasInscriptas(Request.Cookies("UserSettings")("usuario"))
        If materiasInscriptas IsNot Nothing Then
            For Each materia As Materia In materiasInscriptas
                materias.Items.Add(materia.Nombre)
            Next
        End If

    End Sub

End Class