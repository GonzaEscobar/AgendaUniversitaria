<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Agenda.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="StyleSheet" href="Styles/login_style.css" type="text/css">
</head>

<body background=  "fondoAzul2.jpg">
  <form id="form1" runat="server">
  <div class="encabezado">
            <img src="logo.png" width="90px" style="float: left"/>
            <h1>
            <br />
            Bienvenido a Agenda Universitaria
            </h1>
               
        </div>
    <div class="caja">
        
        <img class= "logo" src= "logo.png" style="width: 96px; height: 79px">
		<h1>Login</h1>
        <br />
        <span class="style4"><strong style="font-family: 'Comic Sans MS'"><h3>Usuario</h3></strong></span>
		<asp:TextBox ID="txtUsuario" runat="server" 
            style="margin-left: 0px"></asp:TextBox>
            <span class="style4"><strong style="font-family: 'Comic Sans MS'"><h3>Contraseña</h3></strong></span>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblRespuesta" ForeColor="Red" Font-Names="Arial Black" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar"/>
        <a href="Registro.aspx" >Registro</a>
        <br />    
	
    
    </div>
    <div class="cajaDeTexto"><h2>¿Qu&eacute es agenda universitaria?</h2> 
<h3>Es un lugar en donde agendar tus eventos de la facultad;
 parciales, finales, reuniones de grupo etc.
 Pero principalmente es un repositorio de material para ayudarte a estudiar.
 Parciales y finales por materia (algunos resueltos),
 con calificacion de los usuarios, guias y todo lo que necesitas
 subido por tus propios compañeros. Aca te dejamos algo de material,
 registrate para poder agendar tus eventos y descargar todo el material que necesites.
 <br />
  <br />
<asp:Label ID="lblMensaje" ForeColor="Red" Font-Names="Arial Black" runat="server"></asp:Label>
  <br />
   <br />
 <asp:Button ID="btnRegistro" runat="server" Text="Registrarse"/>
 &nbsp;</h3>
 
 </div>

 <div class= "cajaDescargas">
   <center>
            <h2>Lo mas descargado</h2>
            <p>
                <asp:GridView ID="grdDocumentos" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" style="margin-left: 0px" 
            Width="494px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
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
            </p>
   </center>
 </div>
    </form>
</body>
</html>
