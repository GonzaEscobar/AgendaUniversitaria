<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgregarDocumento.aspx.vb" Inherits="Agenda.AgregarDocumento" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Agenda Universitaria</title>
 
    <!-- CSS de Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- librerías opcionales que activan el soporte de HTML5 para IE8 -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="StyleSheet" href="Styles/pagina_style.css" type="text/css">
    <style type="text/css">
        .style1
        {
            color: #000099;
        }
        .style2
        {
            font-family: "Comic Sans MS";
            font-size: 16px;
        }
        .style3
        {
            color: #0080FF;
            font-weight: 700;
            font-family: "Comic Sans MS";
            font-size: 16px;
        }
        .style4
        {
            color: #0080FF;
            font-size: 16px;
        }
    </style>
</head>
<body background=  "fondoDocumentos.jpg">
    <form id="form1" runat="server">
    <div class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Principal.aspx">Agenda Universitaria</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="Principal.aspx">Inicio</a></li>        
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Documentos <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="DescargarDocumentos.aspx">Descargar Documentos</a></li>
                <li><a href="AgregarDocumento.aspx">Agregar Documentos</a></li>
              </ul>
            </li>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Materias <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="verMaterias.aspx">Ver Materias</a></li>
                <li><a href="agregarMateria.aspx">Agregar Materias</a></li>
                  <li><a href="quitarMateria.aspx">Quitar Materias</a></li>
              </ul>
            </li>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Eventos <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="verEventos.aspx">Ver Eventos</a></li>
                  <li><a href="agregarEvento.aspx">Agregar Evento</a></li>
                <li><a href="eliminarEvento.aspx">Eliminar Evento</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#contact">Contacto</a></li>
              <li><asp:LinkButton ID="Salr" runat="server" css>Logout</asp:LinkButton></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="cajaDescargas col-md-8">
                
      <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <span
            class="style1">
        <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">AGREGAR DOCUMENTO<pan></h2>
        <br />
        <span class="style2"><strong style="color: #0080FF">Materia&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="materias" 
            runat="server" Height="24px" Width="292px" style="color: #003399">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
        <br />
       <center><asp:Label ID="lblMateria" runat="server" ForeColor="Red" CssClass="style1"></asp:Label></center> 
        <br class="style1" />
        <br />
        <span class="style4"><strong style="font-family: 'Comic Sans MS'">Nombre</strong></span>
        <asp:TextBox ID="txtNombre" runat="server" Width="269px"></asp:TextBox>
        <center><asp:Label ID="lblNombre" runat="server" ForeColor="Red"></asp:Label></center>
        <br />
        <br />
        </span>
        <span
            class="style3">
        Link </span>
        <span
            class="style1">
        <asp:TextBox ID="txtLink" runat="server" Width="272px"></asp:TextBox>
        <center><asp:Label ID="lblLink" runat="server" ForeColor="Red"></asp:Label></center>
        <br />
        <center><asp:Label ID="lblRespuesta" runat="server" ForeColor="#99FF33" 
            style="font-weight: 700; font-family: 'Comic Sans MS'"></asp:Label></center>
        <br />
        <center><asp:Button ID="btnAgregar" runat="server" Height="41px" Text="Agregar" 
            Enabled="False" Width="120px" />
        <asp:Button ID="btnProbarLink" runat="server" Text="Probar Link" 
            Height="41px" Width="119px" /></center>
        <br />
        <br />
        <center><asp:Label ID="lblRespuestaLink" runat="server" ForeColor="Red"></asp:Label> </center>  
        </div>
            <div class="col-md-2">
                </div>
            </div>
        </div>
               <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
