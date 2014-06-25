<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Principal.aspx.vb" Inherits="Agenda.Princiapal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="StyleSheet" href="Styles/principal_style.css" type="text/css">
    <style type="text/css">
        .style1
        {
            color: #CC33FF;
            font-size: small;
        }
    </style> 
</head>
<body background=  "logo.jpg" style="height: 284px">
    <form id="form1" runat="server">
    <div style="height: 404px">
        <asp:LinkButton ID="Salr" runat="server" ><h5></h5><img class="botonSalir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
        <h6><span class="style1">Bienvenido</span>&nbsp;
        <asp:Label ID="lblLogueado" ForeColor="BlueViolet" Font-Size="55px" runat="server" 
                style="text-align: left; font-size: small;"></asp:Label>    
        </h6>
        <header>
       <center><div style="width:450px;">
        <div class= "contenedor" ID="btnDocumentos" >
            <a href="DescargarDocumentos.aspx" ><img class= "icon" src= "iconos/documentos.png"></a>
            <p class= "texto">Documentos</p>
        </div>

        <div class= "contenedor" ID="btnMaterias">
            <a href="verMaterias.aspx" ><img class= "icon" src= "iconos/materias.png"></a>
            <p class= "texto">Materias</p>
        </div>

        <div class= "contenedor" ID="btnEventos">
            <a href="verEventos.aspx" ><img class= "icon" src= "iconos/eventos.jpg"></a>
            <p class= "texto">Eventos</p>
        </div>
        </header>
    </div>
    </center>
    </form>
</body>
</html>
