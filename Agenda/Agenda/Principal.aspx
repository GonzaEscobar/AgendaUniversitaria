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
<div style="text-align: center">
<body background=  "fondoAzul.jpg" style="height: 284px">
    <form id="form1" runat="server">
    <div style="height: 404px">
        <asp:LinkButton ID="Salr" runat="server" ><h5></h5><img class="botonSalir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
        <h6><span class="style1">Bienvenido</span>&nbsp;
        <asp:Label ID="lblLogueado" ForeColor="BlueViolet" Font-Size="55px" runat="server" 
                style="text-align: left; font-size: small;"></asp:Label>
        </h6>
        <h6></h6>
        
        <br />
        <br />
      

        <header>
        <div class= "contenedor" ID="btnAgregarDocumento">
            <a href="AgregarDocumento.aspx" ><img class= "icon" src= "iconos/icon2.png"></a>
            <p class= "texto">Agregar Documento </p>
        </div>

        <div class= "contenedor" ID="btnDescargarDocumento">
            <a href="DescargarDocumentos.aspx" ><img class= "icon" src= "iconos/icon6.png"></a>
            <p class= "texto">Descargar Documento </p>
        </div>

        <div class= "contenedor" ID="btnAgregarMaterias">
            <a href="agregarMateria.aspx" ><img class= "icon" src= "iconos/icon2.png"></a>
            <p class= "texto">Agregar Materia </p>
        </div>

        <div class= "contenedor" ID="btnQuitarMateria">
            <a href="quitarMateria.aspx" ><img class= "icon" src= "iconos/icon6.png"></a>
            <p class= "texto">Quitar Materias </p>
        </div>

        <div class= "contenedor" ID="btnVerMaterias">
            <a href="verMaterias.aspx" ><img class= "icon" src= "iconos/icon2.png"></a>
            <p class= "texto">Ver Materias </p>
        </div>

        <div class= "contenedor" ID="btnAgregarEvento">
            <a href="agregarEvento.aspx" ><img class= "icon" src= "iconos/icon6.png"></a>
            <p class= "texto">Agregar Eventos </p>
        </div>

        <div class= "contenedor" ID="btnVerEventos">
            <a href="verEventos.aspx" ><img class= "icon" src= "iconos/icon2.png"></a>
            <p class= "texto">Ver Eventos </p>
        </div>

        <div class= "contenedor" ID="btnQuitarEventos">
            <a href="eliminarEvento.aspx" ><img class= "icon" src= "iconos/icon6.png"></a>
            <p class= "texto">Eliminar Eventos </p>
        </div>
        </header>
    </div>
    </form>

</body>
</html>
