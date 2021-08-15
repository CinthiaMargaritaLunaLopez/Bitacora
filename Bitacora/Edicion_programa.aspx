<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edicion_programa.aspx.cs" Inherits="Bitacora.Edicion_programa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Edicion Programa</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
</head>
<body>
    <form id="form1" runat="server">
         <div style="margin-top: 50px;" class="container">
            <div> 
                <h2>Inserte la información del programa educativo:</h2>
                <p>Nombre del Programa educativo:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>
                <p>Extra
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </p>
            </div>
            <h5>
                Seleccione la carrera a la que quiere agregar el programa educativo:</h5>
            <div>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                <br />
            </div>
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar Cambios" />
            <p>
                &nbsp;</p>
            &nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
