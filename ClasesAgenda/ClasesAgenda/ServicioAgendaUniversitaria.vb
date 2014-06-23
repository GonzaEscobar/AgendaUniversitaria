Public Class ServicioAgendaUniversitaria




    Public Function loguear(ByVal pUsuario As String, ByVal pPassword As String) As Boolean
        Dim dt As DataTable
        Dim mSQL As String

        Try
            mSQL = "SELECT u.nombre  FROM usuarios u " & _
                    "WHERE  u.usuario = '" & Replace(pUsuario, "'", "") & "' AND u.contraseña = '" & Replace(pPassword, "'", "") & "'"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception

            Return False

        End Try

    End Function


    Public Function existeUsuario(ByVal pUsuario As String) As Boolean
        Dim dt As DataTable
        Dim mSQL As String

        Try
            mSQL = "SELECT u.nombre  FROM usuarios u " & _
                    "WHERE  u.usuario = '" & Replace(pUsuario, "'", "") & "'"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception

            Return True

        End Try

    End Function


    Public Function obtenerMateriasInscriptas(ByVal pUsuario As String) As List(Of Materia)
        Dim dt As DataTable
        Dim mSQL As String
        Dim materias As New List(Of Materia)
        Dim mMateria As Materia

        Try
            mSQL = "SELECT u.nombre nombre_usuario,m.idmateria, m.descripmateria nombre_materia FROM usuarios u, materiasusuarios mu, materias m " & _
                    "WHERE u.idusuario = mu.idusuario AND mu.idmateria = m.idmateria " & _
                    "AND u.usuario = '" & Replace(pUsuario, "'", "") & "'"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                For Each unaFila As DataRow In dt.Rows

                    mMateria = New Materia
                    mMateria.Codigo = unaFila("idmateria").ToString.Trim
                    mMateria.Nombre = unaFila("nombre_materia").ToString.Trim

                    materias.Add(mMateria)

                Next

                Return materias

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try

    End Function


    Public Function obtenerMateria(ByVal pMateria As String) As String
        Dim dt As DataTable
        Dim mSQL As String

        Try
            mSQL = "SELECT m.descripmateria nombre_materia FROM  materias m " & _
                    "WHERE m.idmateria= '" & Replace(pMateria, "'", "") & "'"


            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                Return dt(0)("nombre_materia").ToString.Trim

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try

    End Function


    Public Function obtenerMateriasNoInscriptas(ByVal pUsuario As String) As List(Of Materia)
        Dim dt As DataTable
        Dim mSQL As String
        Dim materias As New List(Of Materia)
        Dim mMateria As Materia

        Try

            mSQL = "SELECT m.idmateria, m.descripmateria nombre_materia FROM  materias m " & _
                   "WHERE m.idmateria NOT IN " & _
                    "(SELECT m1.idmateria FROM usuarios u1, materiasusuarios mu1, materias m1 " & _
                    "WHERE u1.idusuario = mu1.idusuario AND mu1.idmateria = m1.idmateria " & _
                    "AND u1.usuario = '" & Replace(pUsuario, "'", "") & "')"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                For Each unaFila As DataRow In dt.Rows

                    mMateria = New Materia
                    mMateria.Codigo = unaFila("idmateria").ToString.Trim
                    mMateria.Nombre = unaFila("nombre_materia").ToString.Trim

                    materias.Add(mMateria)

                Next

                Return materias

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try

    End Function


    Public Function obtenerMaterias() As List(Of Materia)
        Dim dt As DataTable
        Dim mSQL As String
        Dim materias As New List(Of Materia)
        Dim mMateria As Materia

        Try
            mSQL = "SELECT m.idmateria, m.descripmateria nombre_materia FROM  materias m "

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                For Each unaFila As DataRow In dt.Rows

                    mMateria = New Materia
                    mMateria.Codigo = unaFila("idmateria").ToString.Trim
                    mMateria.Nombre = unaFila("nombre_materia").ToString.Trim

                    materias.Add(mMateria)

                Next

                Return materias

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try
    End Function


    Public Function obtenerEventosPorMateria(ByVal pUsuario As Integer, ByVal pMateria As Integer) As List(Of Evento)
        Dim dt As DataTable
        Dim mSQL As String
        Dim eventos As New List(Of Evento)
        Dim mEvento As Evento

        Try
            mSQL = "SELECT e.descripevento, e.fechaevento FROM  eventos e " & _
                   "WHERE e.idusuario = '" & Replace(pUsuario, "'", "") & "' AND e.idmateria = '" & Replace(pMateria, "'", "") & "'"


            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                For Each unaFila As DataRow In dt.Rows

                    mEvento = New Evento
                    mEvento.Nombre = unaFila("descripevento").ToString.Trim
                    mEvento.Fecha = unaFila("fechaevento").ToString.Trim
                    eventos.Add(mEvento)

                Next

                Return eventos

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try
    End Function


    Public Function obtenerEventos(ByVal pUsuario As Integer) As List(Of Evento)
        Dim dt As DataTable
        Dim mSQL As String
        Dim eventos As New List(Of Evento)
        Dim mEvento As Evento

        Try
            mSQL = "SELECT e.idevento, e.descripevento, e.fechaevento, e.idmateria FROM  eventos e " & _
                   "WHERE e.idusuario = '" & Replace(pUsuario, "'", "") & "'"


            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                For Each unaFila As DataRow In dt.Rows

                    mEvento = New Evento
                    mEvento.Codigo = unaFila("idevento")
                    mEvento.Nombre = unaFila("descripevento").ToString.Trim
                    mEvento.Fecha = unaFila("fechaevento").ToString.Trim
                    mEvento.Materia = unaFila("idmateria")
                    eventos.Add(mEvento)

                Next

                Return eventos

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try
    End Function


    Public Function obtenerIdMateria(ByVal pMateria As String) As Integer
        Dim dt As DataTable
        Dim mSQL As String
        Try
            mSQL = "SELECT m.idmateria  FROM  materias m " & _
            "WHERE  m.descripmateria = '" & Replace(pMateria, "'", "") & "'"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then
                Return dt.Rows(0)("idmateria")
            Else
                Return Nothing
            End If

        Catch ex As Exception

            Return Nothing

        End Try
    End Function


    Public Function obtenerIdUsuario(ByVal pUsuario As String) As Integer
        Dim dt As DataTable
        Dim mSQL As String
        Try
            mSQL = "SELECT u.idusuario  FROM  usuarios u " & _
            "WHERE  u.usuario = '" & Replace(pUsuario, "'", "") & "'"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then
                Return dt.Rows(0)("idusuario")
            Else
                Return Nothing
            End If

        Catch ex As Exception

            Return Nothing

        End Try
    End Function


    Public Function obtenerNombreUsuario(ByVal pUsuario As Integer) As String
        Dim dt As DataTable
        Dim mSQL As String
        Try

            mSQL = "SELECT u.usuario  FROM  usuarios u " & _
           "WHERE  u.idusuario = '" & Replace(pUsuario, "'", "") & "'"

            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                Return dt.Rows(0)("usuario")

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try

    End Function


    Public Function obtenerDocumentos(ByVal pMateria As String) As List(Of Documento)
        Dim dt As DataTable
        Dim mSQL As String
        Dim mDocumento As Documento
        Dim mMateria As Materia
        Dim mListaDocumentos As List(Of Documento)

        Try

            mSQL = "SELECT   d.descargas, d.idusuariosubida, d.iddocumento, d.descripdocumento nombre_documento, d.link, m.descripmateria nombre_materia, m.idmateria FROM documentos d, materias m " & _
                    "WHERE d.idmateria = m.idmateria AND m.descripmateria = '" & Replace(pMateria, "'", "") & "'"
            dt = ServiciosSQL.seleccionarDatos(mSQL)

            If Not IsNothing(dt) Then

                mListaDocumentos = New List(Of Documento)

                For Each unaFila As DataRow In dt.Rows

                    mMateria = New Materia
                    mMateria.Codigo = unaFila("idmateria").ToString.Trim
                    mMateria.Nombre = unaFila("nombre_materia").ToString

                    mDocumento = New Documento
                    mDocumento.Codigo = unaFila("iddocumento").ToString.Trim
                    mDocumento.Nombre = unaFila("nombre_documento").ToString.Trim
                    mDocumento.Link = unaFila("link").ToString.Trim
                    mDocumento.Usuario = unaFila("idusuariosubida").ToString.Trim
                    mDocumento.Descargas = unaFila("descargas").ToString.Trim
                    mDocumento.Materia = mMateria

                    mListaDocumentos.Add(mDocumento)

                Next

                Return mListaDocumentos

            Else

                Return Nothing

            End If

        Catch ex As Exception

            Return Nothing

        End Try

    End Function


    Public Sub agregarUsuario(ByVal pUsuario As Usuario)
        'Dim mSQL As String

        'mSQL = "INSERT INTO usuarios (usuario, nombre, contraseña) VALUES " & _
        '        "('" & pUsuario.Usuario & "','" & pUsuario.Nombre & "','" & pUsuario.Contraseña & "')"
        'ServiciosSQL.ejecutarSQL(mSQL)


        Dim mListaParametros As New List(Of OleDb.OleDbParameter)
        mListaParametros.Add(New OleDb.OleDbParameter("Usuario", pUsuario.Usuario))
        mListaParametros.Add(New OleDb.OleDbParameter("Contraseña", pUsuario.Contraseña))
        mListaParametros.Add(New OleDb.OleDbParameter("Nombre", pUsuario.Nombre))

        ServiciosSQL.ejecutarStoredProcedure("IUsuarios", mListaParametros)

    End Sub


    Public Sub agregarMateria(ByVal pMateria As Materia)
        'Dim mSQL As String

        'mSQL = "INSERT INTO materias (materia, nombre) VALUES " & _
        '        "('" & pMateria.Codigo & "','" & pMateria.Nombre & "')"
        'ServiciosSQL.ejecutarSQL(mSQL)

        Dim mListaParametros As New List(Of OleDb.OleDbParameter)
        mListaParametros.Add(New OleDb.OleDbParameter("DescripMateria", pMateria.Nombre))

        ServiciosSQL.ejecutarStoredProcedure("IMaterias", mListaParametros)

    End Sub


    Public Sub agregarDocumento(ByVal pDocumento As Documento)
        'Dim mSQL As String

        'mSQL = "INSERT INTO documentos (descripdocumento, link, idmateria) VALUES " & _
        '        "('" & pDocumento.Nombre & "','" & pDocumento.Link & "','" & pDocumento.Materia.Codigo & "')"
        'ServiciosSQL.ejecutarSQL(mSQL)

        Dim mListaParametros As New List(Of OleDb.OleDbParameter)
        mListaParametros.Add(New OleDb.OleDbParameter("DescripDocumento", pDocumento.Nombre))
        mListaParametros.Add(New OleDb.OleDbParameter("Link", pDocumento.Link))
        mListaParametros.Add(New OleDb.OleDbParameter("IdMateria", pDocumento.Materia.Codigo))
        mListaParametros.Add(New OleDb.OleDbParameter("IdUsuarioSubida", pDocumento.Usuario))

        ServiciosSQL.ejecutarStoredProcedure("IDocumentos", mListaParametros)

    End Sub


    Public Sub agregarEvento(ByVal pEvento As Evento)
        'Dim mSQL As String
        'mSQL = "INSERT INTO eventos (descripevento, fechaEvento,idusuario, idmateria) VALUES " & _
        '        "('" & pEvento.Nombre & "','" & pEvento.Fecha & "','" & pEvento.Usuario & "','" & pEvento.Materia & "' )"
        'ServiciosSQL.ejecutarSQL(mSQL)

        Dim mListaParametros As New List(Of OleDb.OleDbParameter)
        mListaParametros.Add(New OleDb.OleDbParameter("DescripEvento ", pEvento.Nombre))
        mListaParametros.Add(New OleDb.OleDbParameter("FechaEvento ", pEvento.Fecha))
        mListaParametros.Add(New OleDb.OleDbParameter("IdUsuario", pEvento.Usuario))
        mListaParametros.Add(New OleDb.OleDbParameter("IdMateria", pEvento.Materia))

        ServiciosSQL.ejecutarStoredProcedure("IEventos", mListaParametros)

    End Sub


    Public Sub agregarMateriaAUsuario(ByVal pUsuario As Integer, ByVal pMateria As Integer)
        'Dim mSQL As String

        'mSQL = "INSERT INTO materiasusuarios (idusuario, idmateria) VALUES " & _
        '        "('" & pUsuario & "','" & pMateria & "')"
        'ServiciosSQL.ejecutarSQL(mSQL)

        Dim mListaParametros As New List(Of OleDb.OleDbParameter)
        mListaParametros.Add(New OleDb.OleDbParameter("idMateria", pMateria))
        mListaParametros.Add(New OleDb.OleDbParameter("idUsuario", pUsuario))

        ServiciosSQL.ejecutarStoredProcedure("IMateriasUsuarios", mListaParametros)

    End Sub


    Public Sub quitarMateriaAUsuario(ByVal pUsuario As Integer, ByVal pMateria As Integer)
        Dim mSQL As String

        mSQL = "DELETE FROM materiasusuarios  " & _
                "WHERE idusuario = '" & pUsuario & "' AND idmateria ='" & pMateria & "'"
        ServiciosSQL.ejecutarSQL(mSQL)

    End Sub

    Public Sub quitarEvento(ByVal pEvento As Integer)
        Dim mSQL As String

        mSQL = "DELETE FROM eventos  " & _
                "WHERE idevento = '" & pEvento & "'"
        ServiciosSQL.ejecutarSQL(mSQL)

    End Sub

    Public Function actualizarDescargas(ByVal pDocumento As Integer, ByVal pDescargas As Integer)

        Dim mSQL As String
        Try
            mSQL = "Update documentos Set descargas= '" & Replace(pDescargas, "'", "") & "'" & _
                    " Where  iddocumento= '" & Replace(pDocumento, "'", "") & "'"

            ServiciosSQL.seleccionarDatos(mSQL)


        Catch ex As Exception

            Return Nothing

        End Try

        Return 0
    End Function

End Class
