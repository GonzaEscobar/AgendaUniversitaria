Public Class Evento

    Private mCodigo As Integer
    Public Property Codigo() As Integer
        Get
            Return mCodigo
        End Get
        Set(ByVal value As Integer)
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


    Private mFecha As DateTime
    Public Property Fecha() As DateTime
        Get
            Return mFecha
        End Get
        Set(ByVal value As DateTime)
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
