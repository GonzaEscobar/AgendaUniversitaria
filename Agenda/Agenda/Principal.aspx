<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Principal.aspx.vb" Inherits="Agenda.Princiapal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="StyleSheet" href="Styles/principal_style.css" type="text/css">
</head>


<body background=  "fondoAzul.jpg" style="height: 284px">
    <form id="form1" runat="server">
        <div class="encabezado">
            <img src="logo.png" width="90px" style="float: left"/>
            <h1>
            <asp:LinkButton ID="Salr" runat="server" ><img class="botonSalir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
            <br />
            Bienvenido
            <asp:Label ID="lblLogueado" runat="server"></asp:Label>
            a Agenda Universitaria
            </h1>
               
        </div>
        <header>
 
        <div class= "contenedor" ID="btnDocumentos" >
            <a href="DescargarDocumentos.aspx" ><img class= "icon" src= "iconos/books.png"></a>
            <p class= "texto">Documentos</p>
        </div>

        <div class= "contenedor" ID="btnMaterias">
            <a href="verMaterias.aspx" ><img class= "icon" src="iconos/recordatorio.png" ></a>
            <p class= "texto">Mis Materias</p>
        </div>

        <div class= "contenedor" ID="btnEventos">
            <a href="verEventos.aspx" ><img class= "icon" src= "iconos/calendario.png"></a>
            <p class= "texto">Eventos</p>
        </div>
        </header>
    </form>
    <div class="pieDePagina">
    <center>
    <h1>Seguinos en Facebook</h1>
        <a href="http://www.facebook.com/pages/Agenda-Universitaria/1498605500373043?fref=ts"target="_blank"><img alt="Siguenos en Facebook" src="https://lh3.googleusercontent.com/-p36RQiaNpZU/T6P5QFjPz_I/AAAAAAAAAxI/QLR60pfni-s/s48/facebook48.png" width=48 height=48   /></a>
    </center>
    </div>
        
</body>
</html>
