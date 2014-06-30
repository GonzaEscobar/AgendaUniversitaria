<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="verEventos.aspx.vb" Inherits="Agenda.verEventos" %>

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
        .style3
        {
            text-decoration: none;
        }
        </style>
</head>
<body background=  "fondo2.jpg">
    <form id="form1" runat="server">
    <div class="encabezado">
     <asp:LinkButton ID="Salr" runat="server" ><img class="botonSalir" src="botonExit.png" width="65px" style="float: right"/></asp:LinkButton>
     <a href="Principal.aspx" ><img src="logo.png" style="float: left; width: 90px;"/>
    <div style="color: #FFFFFF">
     <a href="Principal.aspx" >
     <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0F0" ForeColor="#00CCFF" 
        Orientation="Horizontal" RenderingMode="Table"  Height="72px" 
            style="margin-left: 0px" Width="216px">
        <Items>
            <asp:MenuItem NavigateUrl="~/agregarEvento.aspx" 
                Text="Agregar Evento" Value="Descargar Documento"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/eliminarEvento.aspx" Text="Eliminar Evento" 
                Value="Quitar Materia"></asp:MenuItem>
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
         <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">EVENTOS<pan></h2>
&nbsp;<span class="style2"><strong style="color: #0080FF">Materia&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="materias" 
            runat="server" Height="24px" Width="292px" 
            style="color: #003399; margin-left: 5px;">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <center><asp:Button ID="btnMostrar" runat="server" Text="Mostrar" /></center>
        <br />
        <br />
        <center><asp:GridView ID="grdEventos" runat="server" style="margin-left: 9px" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            CaptionAlign="Right">
            <RowStyle HorizontalAlign="center"  />
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView></center>
        <span class="style1"><center> <asp:Label ID="lblRespuesta" runat="server" ForeColor="Red"></asp:Label></center>
            </div>
    </form>
</body>
</html>
