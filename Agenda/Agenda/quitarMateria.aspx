<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="quitarMateria.aspx.vb" Inherits="Agenda.quitarMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #003399;
            font-size: 30px;
            font-family: Aharoni;
            text-align: center;
        }
    </style>
</head>



<style>
    div.caja{

		background:#f0f0f0;
		width:344px;
		border:1px solid white;
		margin: 22px auto 50px auto;
		padding: 1.5em;
		border-radius: 10px;
		
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

input[type=submit]{
padding:1em;
background:#0080ff;
border:none;
color: white;
font-family: arial black;
font-size:14px;
border-radius: 30px;
text-decoration: none;
}



input[type=submit]:hover, form a:hover
{
    background:#0040ff;
}
</style>








<body background=  "fondoAzul.jpg">
    <form id="form1" runat="server">
    <asp:LinkButton ID="Salir" runat="server"><img class="Salir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
    <div class= "caja">
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White" style="color: #0099FF"></asp:Label>
        <span class="style1">&nbsp;<br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QUITAR MATERIA</span

        <br />
        <br />
        <br />
        <asp:CheckBoxList ID="materias" runat="server" Height="23px" Width="320px" 
            BackColor="#99CCFF" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" 
            
            style="text-align: left; margin-left: 0px; font-family: Arial; color: #003399; background-color: #F0F0F0;">
        </asp:CheckBoxList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnQuitar" runat="server" Text="Quitar" />
    
    </div>
    </form>
</body>
</html>
