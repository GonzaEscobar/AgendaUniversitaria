<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Principal.aspx.vb" Inherits="Agenda.Princiapal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link rel="StyleSheet" href="Styles/principal_style.css" type="text/css">
</head>


<body background=  "fondoAzul2.jpg" style="height: 284px">
    <form ID=form1 runat="server">
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
        <div class="col-md-12">
            
        <div class="encabezado">
            <img src="logo.png" width="90px" style="float: left"/>
            <h1>
            <br />
            Bienvenido
            <asp:Label ID="lblLogueado" runat="server"></asp:Label>
            a Agenda Universitaria
            </h1>
               
        </div>
                </form>
        </div>
    </div>
    </div>
    <div class="container">
    <div class="row">
        <div class="col-md-2">
            </div>
        
        <div class="col-md-2">
        <div class= "contenedor" ID="btnDocumentos" >
            <a href="DescargarDocumentos.aspx" ><img class= "icon" src= "iconos/books.png"></a>
            <p class= "texto">Documentos</p>
        </div>
            
</div>
        <div class="col-md-1">
            </div>
            <div class="col-md-2">
        <div class= "contenedor" ID="btnMaterias">
            <a href="verMaterias.aspx" ><img class= "icon" src="iconos/recordatorio.png" ></a>
            <p class= "texto">Mis Materias</p>
        </div>
</div>
        <div class="col-md-1">
            </div>
            <div class="col-md-2">
        <div class= "contenedor" ID="btnEventos">
            <a href="verEventos.aspx" ><img class= "icon" src= "iconos/calendario.png"></a>
            <p class= "texto">Eventos</p>
        </div>
                
                </div>
<div class="col-md-2">
            </div>
        </div>
        </div>
    <div id="footer">
      <div class="container">
<div class="pieDePagina">
    <center>
    <h1>Seguinos en Facebook</h1>
        <a href="http://www.facebook.com/pages/Agenda-Universitaria/1498605500373043?fref=ts"target="_blank"><img alt="Siguenos en Facebook" src="https://lh3.googleusercontent.com/-p36RQiaNpZU/T6P5QFjPz_I/AAAAAAAAAxI/QLR60pfni-s/s48/facebook48.png" width=48 height=48   /></a>
    </center>
    </div>
      </div>
    </div>
    
    
        <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="js/bootstrap.min.js"></script>
        
</body>
</html>
