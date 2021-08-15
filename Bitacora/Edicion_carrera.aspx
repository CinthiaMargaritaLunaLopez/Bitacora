<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edicion_carrera.aspx.cs" Inherits="Bitacora.Edicion_Carrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <title>Edicion de carrera</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   

</head>
<body>
    <form id="form1" runat="server">
        
        <div style="display:flex; justify-content:center; flex-wrap:wrap; padding: 30px 200px 0 200px;" class="container">
            <h1>Edición de carrera</h1>
            <div class="col-12">
                Nombre de la carrea:
            <asp:TextBox ID="TextBox1" runat="server" Width="582px"></asp:TextBox>
                <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Guardar Cambios" OnClick="Button1_Click" />
            </div>
        </div>
        
    </form>
</body>
</html>
