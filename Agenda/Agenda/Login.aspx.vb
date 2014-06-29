Imports ClasesAgenda

Public Class Login
    Inherits System.Web.UI.Page
    Dim wsAgenda As New ServicioAgendaUniversitaria

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim documentos As List(Of Documento)
        Dim filaDocumento As DataRow
        Dim tabla As New DataTable
        Dim link As New HyperLinkColumn
        If (Request.Cookies("UserSettings") IsNot Nothing) Then
            Response.Redirect("Principal.aspx")
        Else
            lblMensaje.Visible = False
            btnRegistro.Visible = False
            documentos = wsAgenda.documantosMasDescargados()
            If documentos IsNot Nothing Then
                tabla.Columns.Add("Materia")
                tabla.Columns.Add("Descripción")
                For Each documento As Documento In documentos
                    filaDocumento = tabla.NewRow()
                    filaDocumento("Materia") = documento.Materia.Nombre
                    filaDocumento("Descripción") = documento.Nombre
                    tabla.Rows.Add(filaDocumento)
                Next
                grdDocumentos.DataSource = tabla
                grdDocumentos.DataBind()
            End If
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

    Protected Sub grdDocumentos_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles grdDocumentos.SelectedIndexChanged

        lblMensaje.Visible = True
        btnRegistro.Visible = True
        lblMensaje.Text = " Debe estar registrado para descargar un documento, por favor registrese"

    End Sub

    Protected Sub btnRegistro_Click1(ByVal sender As Object, ByVal e As EventArgs) Handles btnRegistro.Click

        Response.Redirect("Registro.aspx")

    End Sub

End Class