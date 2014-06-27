﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarMateria.aspx.vb" Inherits="Agenda.agregarMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="StyleSheet" href="Styles/pagina_style.css" type="text/css">
    </head>
<body background=  "fondo1.jpg">
    <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0F0" ForeColor="#00CCFF" 
        Orientation="Horizontal" RenderingMode="Table" align="center">
        <Items>
            <asp:MenuItem NavigateUrl="~/verMaterias.aspx" 
                Text="Ver Materias" Value="Descargar Documento"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/quitarMateria.aspx" Text="Quitar Materia" 
                Value="Quitar Materia"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Principal.aspx" Text="Principal" Value="Principal">
            </asp:MenuItem>
            <asp:MenuItem Text="Salir" Value="Salir"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
    <div class="caja">
    <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
            <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">AGREGAR MATERIAS</h2>   
            <asp:CheckBoxList ID="materias" runat="server" Height="16px" Width="300px" 
            BackColor="#f0f0f0" BorderColor="#f0f0f0" BorderStyle="Solid" BorderWidth="1px" 
            style="margin-left: 0px; color: #003399; font-family: Arial;">
        </asp:CheckBoxList>
        <br />
        <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="149px" /></center>
        <br />
    </div>
    </form>
</body>
</html>
