<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarMateria.aspx.vb" Inherits="Agenda.agregarMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<style>
    div.caja{

		background:#f0f0f0;
		width:324px;
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
    <asp:LinkButton ID="Salir" runat="server"  ><h5></h5><img class="Salir" src="botonExit.png" width="50px" style="float: right"/></asp:LinkButton>
    <div class="caja">
    <asp:Label ID="lblLogueado" runat="server" ForeColor="#0080ff"></asp:Label>
         
            
            <h2 style="text-align: center"><span style="font-family: Aharoni; color: #003399">AGREGAR MATERIAS</h2>
       
        
        

        
        <br />
            <asp:CheckBoxList ID="materias" runat="server" Height="16px" Width="343px" 
            BackColor="#f0f0f0" BorderColor="#f0f0f0" BorderStyle="Solid" BorderWidth="1px" 
            style="margin-left: 0px; color: #003399; font-family: Arial;">
        </asp:CheckBoxList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
            ID="btnAgregar" runat="server" Text="Agregar" Width="149px" />
        &nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
