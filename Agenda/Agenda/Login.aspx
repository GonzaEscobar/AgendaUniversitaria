<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Agenda.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Agenda Universitaria</title>
 
    <!-- CSS de Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="StyleSheet" href="Styles/login_style.css" type="text/css">
    <!-- librerías opcionales que activan el soporte de HTML5 para IE8 -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body background=  "fondoAzul2.jpg">

    <div class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Agenda Universitaria</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Inicio</a></li>        
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
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
  <!-- Main jumbotron for a primary marketing message or call to action -->
   
        
<div class="container">
    
    
     <div class="jumbotron">
      <img src="logo.png" width="90px" style="float: left"/>
            <h1>
            Bienvenido a Agenda Universitaria
            </h1>
      
      </div>
</div>
    
<form id="form1" runat="server">
 <div class="container">
     <div class="row">
    <div class="cajaDeTexto col-md-4"><h2>&iquest;Qu&eacute; es agenda universitaria?</h2> 
<h3>Es un lugar en donde agendar tus eventos de la facultad;
 parciales, finales, reuniones de grupo etc.
 Pero principalmente es un repositorio de material para ayudarte a estudiar.
 Parciales y finales por materia (algunos resueltos),
 con calificacion de los usuarios, guias y todo lo que necesitas
 subido por tus propios compa&ntilde;eros. Aca te dejamos algo de material,
 registrate para poder agendar tus eventos y descargar todo el material que necesites.
 <br />
  <br />
</h3>
 <asp:Label ID="lblMensaje" ForeColor="Red" Font-Names="Arial Black" runat="server"></asp:Label>
  <br />
   <br />
 <asp:Button ID="btnRegistro" runat="server" Text="Registrarse"/>
 &nbsp;
 </div>

 <div class= "cajaDescargas col-md-5">
   <center>
            <h2>Lo mas descargado</h2>
            <p>
                <asp:GridView ID="grdDocumentos" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" style="margin-left: 0px" 
             HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <RowStyle HorizontalAlign="center" />
            <Columns>
                <asp:CommandField SelectText="Descargar" ShowSelectButton="True" itemstyle-cssclass="btn btn-primary"/>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>   
            </p>
   </center>
 </div>
      <div class="caja col-md-3">
       
        <img class= "logo" src= "logo.png" style="width: 96px; height: 79px">
		<h1>Login</h1>
        <br />
        <span class="style4"><strong style="font-family: 'Comic Sans MS'"><h3>Usuario</h3></strong></span>
		<asp:TextBox ID="txtUsuario" runat="server" 
            style="margin-left: 0px"></asp:TextBox>
            <span class="style4"><strong style="font-family: 'Comic Sans MS'"><h3>Contrase&ntilde;a</h3></strong></span>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblRespuesta" ForeColor="Red" Font-Names="Arial Black" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="botonSubmit"/>
        <a class="botonSubmit" href="Registro.aspx" >Registro</a>
        <br />    
	
    
    </div>
         </div>
          </div>   
    </form>
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
