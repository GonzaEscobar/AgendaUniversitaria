<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgregarDocumento.aspx.vb" Inherits="Agenda.AgregarDocumento" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body background=  "fondoAzul.jpg">
    <form id="form1" runat="server">
    <div style="height: 289px">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
            class="style1"><asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="Documentos" Value="Documentos">
                    <asp:MenuItem NavigateUrl="AgregarDocumento.aspx" Text="Agregar" Value="mento">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="DescargarDocumentos.aspx" Text="Descargar" 
                        Value="Descargar"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Agenda" Value="Agenda">
                    <asp:MenuItem Text="Materia" Value="Materia">
                        <asp:MenuItem NavigateUrl="~/agregarMateria.aspx" Text="Agregar" 
                            Value="Agregar"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/quitarMateria.aspx" Text="Eliminar" 
                            Value="Eliminar"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/verMaterias.aspx" Text="Ver" Value="Ver">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Evento" Value="Evento">
                        <asp:MenuItem NavigateUrl="~/agregarEvento.aspx" Text="Agregar" Value="Agregar">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/verEventos.aspx" Text="Ver" Value="Ver">
                        </asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Principal.aspx" Text="Principal" Value="Principal">
                </asp:MenuItem>
                <asp:MenuItem Text="Salir" Value="Salir"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
            class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        Agregar Documento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLogueado" runat="server" ForeColor="White"></asp:Label>
&nbsp;
        <br />
&nbsp;<br />
        &nbsp;&nbsp;<span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Materia&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="materias" runat="server" Height="24px" Width="224px">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Label ID="lblMateria" runat="server" ForeColor="Red" CssClass="style1"></asp:Label>
        <br class="style1" />
        <br />
        <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNombre" runat="server" Width="224px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNombre" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Link&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLink" runat="server" Width="224px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLink" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRespuesta" runat="server" ForeColor="#99FF33"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAgregar" runat="server" Height="26px" Text="Agregar" 
            Enabled="False" />
    
    &nbsp;&nbsp;
    
        <asp:Button ID="btnProbarLink" runat="server" Text="Probar Link" 
            Height="26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRespuestaLink" runat="server" ForeColor="Red"></asp:Label>
    
        </div>
    </form>
</body>
</html>
