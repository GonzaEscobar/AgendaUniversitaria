Imports Encriptador

Public Class ServiciosSQL

    'Private Const mStringConexion As String = "driver={SQL Server};server=keyfactor.no-ip.org;uid=sa;PWD=matanga;database=AgendaUniversitaria;Provider=SQLOLEDB"
    'Private Const mStringConexion As String = "driver={SQL Server};server=EugePC;Trusted_Connection=Yes;database=AgendaUniversitaria;Provider=SQLOLEDB"

    Private Sub New()

    End Sub

    Private Shared Function obtenerStringConexion() As String

        Dim mStringConexion As String = ""

        mStringConexion = "driver={SQL Server};server=keyfactor.no-ip.org;uid=sa;PWD=matanga;database=AgendaUniversitaria;Provider=SQLOLEDB"

        Return mStringConexion

    End Function

    Public Shared Function seleccionarDatos(ByVal pSQL As String) As DataTable
        Dim mConexion As OleDb.OleDbConnection
        Dim mCommand As OleDb.OleDbCommand
        Dim mDReader As OleDb.OleDbDataReader
        Dim dt As DataTable
        Try


            mConexion = New OleDb.OleDbConnection
            mConexion.ConnectionString = obtenerStringConexion()
            mConexion.Open()

            mCommand = mConexion.CreateCommand
            mCommand.Connection = mConexion
            mCommand.CommandText = pSQL
            mDReader = mCommand.ExecuteReader()

            If mDReader.HasRows Then
                dt = New DataTable
                dt.Load(mDReader)
                mConexion.Close()
                Return dt
            Else
                mConexion.Close()
                Return Nothing
            End If

        Catch ex As Exception

            mConexion.Close()
            Return Nothing

        End Try

    End Function



    Public Shared Sub ejecutarSQL(ByVal pSQL As String)
        Dim mConexion As OleDb.OleDbConnection
        Dim mCommand As OleDb.OleDbCommand

        Try

            mConexion = New OleDb.OleDbConnection
            mConexion.ConnectionString = obtenerStringConexion()
            mConexion.Open()

            mCommand = mConexion.CreateCommand
            mCommand.Connection = mConexion
            mCommand.CommandText = pSQL
            mCommand.ExecuteNonQuery()

            mConexion.Close()

        Catch ex As Exception
            mConexion.Close()
            Throw ex
        End Try

    End Sub

    Public Shared Function ejecutarStoredProcedure(ByVal pStoredProcedureName As String, ByVal pParametros As List(Of OleDb.OleDbParameter)) As Integer
        Dim mCantFilasAfectadas As Integer
        Dim mConexion As OleDb.OleDbConnection
        Dim mCommand As OleDb.OleDbCommand

        Try

            mConexion = New OleDb.OleDbConnection
            mConexion.ConnectionString = obtenerStringConexion()
            mConexion.Open()

            mCommand = mConexion.CreateCommand
            mCommand.Connection = mConexion
            mCommand.CommandType = CommandType.StoredProcedure
            mCommand.CommandText = pStoredProcedureName

            For Each mParametro As OleDb.OleDbParameter In pParametros

                mCommand.Parameters.Add(mParametro)

            Next

            mCantFilasAfectadas = mCommand.ExecuteNonQuery()

        Catch ex As Exception
            mConexion.Close()
            Throw ex
        End Try

    End Function

End Class
