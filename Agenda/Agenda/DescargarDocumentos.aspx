<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DescargarDocumentos.aspx.vb" Inherits="Agenda.Documentos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="StyleSheet" href="Styles/pagina_style.css" type="text/css">
    <style type="text/css">
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
        div.caja{

		background:#f0f0f0;
		width:490px;
		border:1px solid white;
		margin: 22px auto 50px auto;
		padding: 1.5em;
		border-radius: 10px;
		
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
            style="margin-left: 0px" Width="130px">
        <Items>
            <asp:MenuItem NavigateUrl="~/AgregarDocumento.aspx" 
                Text="Agregar Documento" Value="Descargar Documento"></asp:MenuItem>
        </Items>
    </asp:Menu>
        </a>  
        <br />
        <br />
            <br />
    </div>
    <div class="caja">
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <div class="style2">
        <h2 style="text-align: center"> <span style="font-family: Aharoni; color: #003399">DESCARGAR DOCUMENTO</h2>   
        <center><span class="style2"></span><span class="style3"><strong>Materias&nbsp;</strong></span>
        <asp:DropDownList ID="materias" runat="server" Height="20px" Width="212px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList></center>
        <br />
        <center><asp:Button ID="btnBuscar" runat="server" Text="Buscar" /></center>
        <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <center><asp:Label ID="lblRespuesta" runat="server" ForeColor="Red"></asp:Label></center>
        <br />
        </div>
        <asp:GridView ID="grdDocumentos" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" style="margin-left: 0px" 
            Width="470px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <RowStyle HorizontalAlign="center"/>
            <Columns>
                <asp:CommandField SelectText="Descargar" ShowSelectButton="True" />
            </Columns>
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
        </asp:GridView>   
    </div>

    </form>

    
</body>
</html>
