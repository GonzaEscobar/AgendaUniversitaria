Public Class Documento

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


    Private mLink As String
    Public Property Link() As String
        Get
            Return mLink
        End Get
        Set(ByVal value As String)
            mLink = value
        End Set
    End Property


    Private mMateria As Materia
    Public Property Materia() As Materia
        Get
            Return mMateria
        End Get
        Set(ByVal value As Materia)
            mMateria = value
        End Set
    End Property

    Private mUsuario As Integer
    Public Property Usuario() As Integer
        Get
            Return mUsuario
        End Get
        Set(ByVal value As Integer)
            mUsuario = value
        End Set
    End Property

    Private mDescargas As Integer
    Public Property Descargas() As Integer
        Get
            Return mDescargas
        End Get
        Set(ByVal value As Integer)
            mDescargas = value
        End Set
    End Property

    Private mCalificacionPromedio As Integer
    Public Property CalificacionPromedio() As Integer
        Get
            Return mCalificacionPromedio
        End Get
        Set(ByVal value As Integer)
            mCalificacionPromedio = value
        End Set
    End Property

End Class
