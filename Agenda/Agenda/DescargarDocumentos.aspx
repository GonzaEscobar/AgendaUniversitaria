<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DescargarDocumentos.aspx.vb" Inherits="Agenda.Documentos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="StyleSheet" href="Styles/agregarDocumento_style.css" type="text/css">
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            color: #0080FF;
            font-family: Aharoni;
        }
        .style4
        {
            font-size: 30px;
        }
    </style>
</head>
<body background=  "fondoAzul.jpg">
    <form id="form1" runat="server">
    <asp:LinkButton ID="Salir" runat="server"  ><h5></h5><img class="Salir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
    <div class="caja">
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <div class="style2">
    
            &nbsp;<span 
                <h2 style="text-align: center"><span 
                style="font-family: Aharoni; color: #003399; text-align: left;" 
                class="style4">DESCARGAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOCUMENTOS</span></h2>
              
        
&nbsp;
        <br />
        <br />
&nbsp;<span class="style2">&nbsp;&nbsp;</span><span class="style3"><strong>Materias&nbsp;</strong></span>
        <asp:DropDownList ID="materias" runat="server" Height="20px" Width="212px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
        <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblLink" runat="server" ForeColor="Red"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <asp:GridView ID="grdDocumentos" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="Dotted" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" style="margin-left: 0px" 
            Width="458px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Descargar" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
            
    </div>
    </form>
</body>
</html>
