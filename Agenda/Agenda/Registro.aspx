<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Agenda.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="StyleSheet" href="Styles/registro_style.css" type="text/css">
    <title></title>
</head>


<body background=  "logo.jpg" style="height: 305px">
    <form id="form1" runat="server">
    <div class="caja" style="height: 549px">
        <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">REGISTRO</span></h2>
        <h3 style="width: 204px">Usuario <asp:Label ID="lblUsuario" Font-Size= "XX-Small" runat="server" ForeColor="Red"></asp:Label>
        </h3>
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <h3 
            style="width: 195px; height: 23px;">Nombre <asp:Label ID="lblNombre" Font-Size= "XX-Small" runat="server" ForeColor="Red"></asp:Label>      
        </h3>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>  
        <h3 style="width: 208px">Contraseña <asp:Label ID="lblContraseña" Font-Size= "XX-Small" runat="server" ForeColor="Red"></asp:Label>
        </h3>
        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>   
        <h3 style="width: 176px">Confirmar Contraseña</h3>  
        <asp:TextBox ID="txtConfirmar"  runat="server" TextMode="Password"></asp:TextBox>
        <center><asp:Label ID="lblRespuesta" runat="server" BorderColor="#66FF66" 
            ForeColor="#99FF66"></asp:Label></center>
        <br />
        <br />
        <center><asp:Button ID="btnRegistrar" runat="server"  Text="Registrar"/>
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar"/></center>
      </div>
    </form>
</body>
</html>
