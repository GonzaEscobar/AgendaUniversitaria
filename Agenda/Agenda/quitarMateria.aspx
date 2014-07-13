<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="quitarMateria.aspx.vb" Inherits="Agenda.quitarMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
</head>
<body background=  "fondoMaterias.jpg">
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
                <div class="col-md-3">
                    </div>
                
    <div class= "cajaDescargas col-md-6">
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <span class="style1">&nbsp;<br />
        <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">QUITAR MATERIA<pan></h2>
        <asp:CheckBoxList ID="materias" runat="server" Height="19px" Width="298px" 
            BackColor="#99CCFF" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px"         
            style="text-align: left; margin-left: 0px; font-family: Arial; color: #003399; background-color: #F0F0F0;">
        </asp:CheckBoxList>
 
<center><asp:Button ID="btnQuitar" runat="server" Text="Quitar" /></center>
        <br />
        <br />
       <center><asp:Label ID="lblRespuesta" runat="server" ForeColor="Red"></asp:Label></center> 
    </div>
            <div class="col-md-3">
                
            </div>
            </div>
        </div>
    </form>
                <script src="http://code.jquery.com/jquery.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
