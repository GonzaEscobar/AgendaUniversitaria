<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="verMaterias.aspx.vb" Inherits="Agenda.verMaterias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
        div.caja{
		background:#f0f0f0;
		width:308px;
		border:1px solid white;
		margin: 22px auto 50px auto;
		padding: 1.5em;
		border-radius: 10px;	
}
    </style>    
</head>
<body background=  "fondoAzul.jpg">
    <form id="form1" runat="server">
    <asp:LinkButton ID="Salir" runat="server"  ><h5></h5><img class="Salir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
    <div class="caja">
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #00CCFF"></asp:Label>
        <div class="style2">
            <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">VER MATERIAS<pan></h2>
        <asp:GridView ID="grdMaterias" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" style="margin-left: 6px" 
                HorizontalAlign="Center" Width="280px">
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
        </asp:GridView> 
    </div>
    </form>
</body>
</html>
