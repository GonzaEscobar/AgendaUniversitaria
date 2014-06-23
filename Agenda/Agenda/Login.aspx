<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Agenda.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>


<style>
div.caja{

		background:#f0f0f0;
		width:200px;
		border:1px solid white;
		margin: 50px auto;
		padding: 1.5em;
		border-radius: 6px;
		
}

.style4
        {
            color: #0080FF;
            font-size: 16px;
        }
h1{
	font-family: arial;
	color:#0080ff;
	font-size: 30px;
}

h2,h3,h4{
	font-family: arial;
	color:#0080ff;
	font-size: 30px;
}

input[type=text], input[type=password]{
	margin:0 0 1em 0;
	width:175px;
	border: 0px;
	padding:1em;
	border-radius: 3px;
}

input[type=submit], form a{
padding:1em;
background:#0080ff;
border:none;
color: white;
font-family: arial black;
font-size:14px;
border-radius: 3px;
text-decoration: none;
}


img.logo{
	margin: 0px auto;
	background-color: rgba(255,255,255);
	width: 180px;
	border-radius: 50%;
	float:right;
}

input[type=submit]:hover, form a:hover
{
    background:#0040ff;
}
</style>
<body background=  "fondoAzul.jpg">
    <form id="form1" runat="server">
	<div class="caja">
        <img class= "logo" src= "logo.png" style="width: 96px; height: 79px">
		<h1>Login</h1>
        <br />
        <span class="style4"><strong style="font-family: 'Comic Sans MS'">Usuario</strong></span>
		<asp:TextBox ID="txtUsuario" runat="server" 
            style="margin-left: 0px"></asp:TextBox>
            <span class="style4"><strong style="font-family: 'Comic Sans MS'">Contraseña</strong></span>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblRespuesta" ForeColor="Red" Font-Names="Arial Black" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar"/>
        <a href="Registro.aspx" >Registro</a>
        <br />
        
	</div>


    </form>
</body>
</html>
