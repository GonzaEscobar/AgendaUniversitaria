<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="eliminarEvento.aspx.vb" Inherits="Agenda.eliminarEvento" %>

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
<body background=  "fondo2.jpg">
    <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0F0" ForeColor="#00CCFF" 
        Orientation="Horizontal" RenderingMode="Table" align="center">
        <Items>
            <asp:MenuItem NavigateUrl="~/verEventos.aspx" Text="Ver Eventos" 
                Value="Quitar Materia"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/agregarEvento.aspx" 
                Text="Agregar Evento" Value="Descargar Documento"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Principal.aspx" Text="Principal" Value="Principal">
            </asp:MenuItem>
            <asp:MenuItem Text="Salir" Value="Salir"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
    <div class= "caja">
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <span class="style1">&nbsp;<br />
        <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">ELIMINAR EVENTO</h2>  
        <asp:CheckBoxList ID="eventos" runat="server" Height="28px" Width="307px" 
            BackColor="#99CCFF" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" 
            style="text-align: left; margin-left: 0px; font-family: Arial; color: #003399; background-color: #F0F0F0;">
        </asp:CheckBoxList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Eliminar" runat="server" Text="Eliminar" />
        <br />
        <br />
        <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label 
                ID="lblRespuesta" runat="server" ForeColor="Red"></asp:Label>
            </span>
        <br />
    </div>
    </form>
</body>
</html>
