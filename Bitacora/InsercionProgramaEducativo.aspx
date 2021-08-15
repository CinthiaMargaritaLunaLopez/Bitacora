<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsercionProgramaEducativo.aspx.cs" Inherits="Bitacora.InsercionProgramaEducativo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div> 
            <h2>Inserte la información del programa educativo:</h2>
            <p>Nombre del Programa educativo:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>Extra
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
        </div>
        <h2>
            Seleccione la carrera a la que quiere agregar el programa educativo, pues sí no mame xd</h2>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR PROGRAMA EDUCATIVO" />
        <p>
            &nbsp;</p>
        Estado de la insercion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </form>
</body>
</html>
