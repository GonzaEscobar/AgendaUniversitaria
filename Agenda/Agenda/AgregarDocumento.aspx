﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgregarDocumento.aspx.vb" Inherits="Agenda.AgregarDocumento" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<body background=  "fondo.jpg">
    <form id="form1" runat="server">       
    <div class="encabezado">
     <asp:LinkButton ID="Salr" runat="server" ><img class="botonSalir" src="botonExit.png" width="65px" style="float: right"/></asp:LinkButton>
     <a href="Principal.aspx" ><img src="logo.png" style="float: left; width: 90px;"/>
    <div style="color: #FFFFFF">
     <a href="Principal.aspx" >
     <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0F0" ForeColor="#00CCFF" 
        Orientation="Horizontal" RenderingMode="Table"  Height="72px" 
            style="margin-left: 0px" Width="145px">
        <Items>
            <asp:MenuItem NavigateUrl="~/DescargarDocumentos.aspx" 
                Text="Descargar Documento" Value="Descargar Documento"></asp:MenuItem>
        </Items>
    </asp:Menu>
        </a>  
            <br />
    </div>
        <br />
        </a>
        <br />
    <br />
    <div class="caja">
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
    </form>
</body>
</html>
