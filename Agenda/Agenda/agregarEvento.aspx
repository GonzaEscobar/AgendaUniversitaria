<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarEvento.aspx.vb" Inherits="Agenda.agregarEvento" %>

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
<body background=  "fondoEventos.jpg">
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
               
 <div class="cajaDescargas col-md-6">
      <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <span
            class="style1">
        <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">AGREGAR EVENTO<pan></h2>
        <span class="style2"><strong style="color: #0080FF">Materia&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="materias" 
            runat="server" Height="24px" Width="292px" style="color: #003399">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
        <center><asp:Label ID="lblMateria" runat="server" ForeColor="#FF5050"></asp:Label></center>
        <br />
        <br />
      <span class="style2"><strong style="color: #0080FF">Evento&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="eventos" 
            runat="server" Height="24px" Width="292px" style="color: #003399">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
        <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <center><asp:Label ID="lblEvento" runat="server" ForeColor="#FF5050" CssClass="style1"></asp:Label>
        <br class="style1" /></center>
        <br />
       <center><span class="style2"><strong style="color: #0080FF">Fecha&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="calFecha" runat="server" BackColor="White" 
            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="300px" 
            CaptionAlign="Top" SelectedDate="05/30/2014 16:51:16">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar></center>
        <br />
        <center> <asp:Label ID="lblFecha" runat="server" ForeColor="#FF6666"></asp:Label></center>
        <br />
        <center><asp:Label ID="lblRespuesta" runat="server" ForeColor="#66FF66"></asp:Label></center>
        <br />
        <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" /></center>
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
