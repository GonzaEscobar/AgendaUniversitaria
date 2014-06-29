<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="quitarMateria.aspx.vb" Inherits="Agenda.quitarMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="StyleSheet" href="Styles/pagina_style.css" type="text/css">
    <style type="text/css">
        .style1
        {
            color: #000099;
        }
        </style>
</head>
<body background=  "fondo1.jpg">
    <form id="form1" runat="server">
  <div class="encabezado">
     <asp:LinkButton ID="Salr" runat="server" ><img class="botonSalir" src="botonExit.png" width="65px" style="float: right"/></asp:LinkButton>
     <a href="Principal.aspx" ><img src="logo.png" style="float: left; width: 90px;"/>
    <div style="color: #FFFFFF">
     <a href="Principal.aspx" >
     <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0F0" ForeColor="#00CCFF" 
        Orientation="Horizontal" RenderingMode="Table"  Height="72px" 
            style="margin-left: 0px" Width="210px">
        <Items>
            <asp:MenuItem NavigateUrl="~/verMaterias.aspx" 
                Text="Ver Materias" Value="Descargar Documento"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/agregarMateria.aspx" Text="Agregar Materia" 
                Value="Agregar Materia"></asp:MenuItem>
        </Items>
    </asp:Menu>
        </a>  
            <br />
    </div>
        <br />
        </a>
        <br />
    <br />
    <div class= "caja">
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
    </form>
</body>
</html>
