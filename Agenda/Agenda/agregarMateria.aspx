<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarMateria.aspx.vb" Inherits="Agenda.agregarMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="StyleSheet" href="Styles/agregarDocumento_style.css" type="text/css">
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
<body background=  "fondoAzul.jpg">
    <form id="form1" runat="server">
    <asp:LinkButton ID="Salir" runat="server"  ><h5></h5><img class="Salir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
    <div class="caja">
    <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
            <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">AGREGAR MATERIAS</h2>   
            <asp:CheckBoxList ID="materias" runat="server" Height="16px" Width="300px" 
            BackColor="#f0f0f0" BorderColor="#f0f0f0" BorderStyle="Solid" BorderWidth="1px" 
            style="margin-left: 0px; color: #003399; font-family: Arial;">
        </asp:CheckBoxList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
            ID="btnAgregar" runat="server" Text="Agregar" Width="149px" />
        &nbsp;
        <br />
    </div>
    </form>
</body>
</html>
