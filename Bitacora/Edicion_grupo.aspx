<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edicion_grupo.aspx.cs" Inherits="Bitacora.Edicion_grupo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Edicion de grupo</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top:50px" class="container">

            <h2>Insercion de ese grupo</h2>
            <div class="row">
                
                <div class="col">
                    <div style=" height:100px; width:50%;margin:auto; text-align:center ">
                        <asp:Label ID="Label1" runat="server" type="text"  Text="Grado"></asp:Label>
                            <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div style=" height:100px; width:50%;margin:auto; text-align:center ">
                        <asp:Label ID="Label2" runat="server" Text="Letra"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div style=" height:100px; width:50%;margin:auto; text-align:center ">
                         <asp:Label ID="Label3" runat="server" Text="Extra: "></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div style="display:flex; justify-content:center">
                        <asp:Button  ID="Button1" CssClass="btn btn-primary mt-2" runat="server" OnClick="Button1_Click" Text="Guardar Cambios" />
                    </div>
                </div>
                
                
              </div>
        </div>
    </form>
</body>
</html>
