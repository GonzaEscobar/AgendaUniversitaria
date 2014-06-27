﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarEvento.aspx.vb" Inherits="Agenda.agregarEvento" %>

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
        .style2
        {
            font-family: "Comic Sans MS";
            font-size: 16px;
        }
        </style>
</head>
<body background=  "fondo2.jpg">
    <form id="form1" runat="server"> 
    <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0F0" ForeColor="#00CCFF" 
        Orientation="Horizontal" RenderingMode="Table" align="center">
        <Items>
            <asp:MenuItem NavigateUrl="~/verEventos.aspx" 
                Text="Ver Eventos" Value="Descargar Documento"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/eliminarEvento.aspx" Text="Eliminar Evento" 
                Value="Quitar Materia"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Principal.aspx" Text="Principal" Value="Principal">
            </asp:MenuItem>
            <asp:MenuItem Text="Salir" Value="Salir"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
 <div class="caja">
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
       <span class="style2"><strong style="color: #0080FF">Evento&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;
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
        </asp:Calendar>
        <br />
        <center> <asp:Label ID="lblFecha" runat="server" ForeColor="#FF6666"></asp:Label></center>
        <br />
        <center><asp:Label ID="lblRespuesta" runat="server" ForeColor="#66FF66"></asp:Label></center>
        <br />
        <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" /></center>
    </div>
    </form>
</body>
</html>
