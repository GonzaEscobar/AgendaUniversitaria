Public Class Evento

    Private mCodigo As String
    Public Property Codigo() As String
        Get
            Return mCodigo
        End Get
        Set(ByVal value As String)
            mCodigo = value
        End Set
    End Property


    Private mNombre As String
    Public Property Nombre() As String
        Get
            Return mNombre
        End Get
        Set(ByVal value As String)
            mNombre = value
        End Set
    End Property


    Private mFecha As String
    Public Property Fecha() As String
        Get
            Return mFecha
        End Get
        Set(ByVal value As String)
            mFecha = value
        End Set
    End Property

    Private mUsuario As String
    Public Property Usuario() As String
        Get
            Return mUsuario
        End Get
        Set(ByVal value As String)
            mUsuario = value
        End Set
    End Property

    Private mMateria As String
    Public Property Materia() As String
        Get
            Return mMateria
        End Get
        Set(ByVal value As String)
            mMateria = value
        End Set
    End Property
    
End Class
