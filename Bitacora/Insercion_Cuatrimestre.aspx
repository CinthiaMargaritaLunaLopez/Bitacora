<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insercion_Cuatrimestre.aspx.cs" Inherits="Bitacora.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Inserción de cuatrimestre</h1>
            <asp:Label ID="Label1" runat="server" Text="Label">Periodo:</asp:Label>






            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            Año:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            Inicio:
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <br />
            Fin:<asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            Extra:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" runat="server" Height="41px" Width="188px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Insertar" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
                
                
                
                              <Columns>
<asp:TemplateField HeaderText="Programas Educativos" SortExpression="[Id Especifico]"><ItemTemplate>
                                  <asp:Button cssClass="btn btn-warning m-2"  OnClick="EditarCuatri"  ID='LinkButton2' runat="server" Text="Editar Cuatrimestre" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Eliminar Carrera" SortExpression="[Id Especifico]"><ItemTemplate>
                                  <asp:Button cssClass="btn btn-danger m-2"  OnClick="EliminarCuatri"  ID='LinkButton3' runat="server" Text="Eliminar Cuatrimestre" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
</ItemTemplate>
</asp:TemplateField>
                             </Columns>            
                
                
                
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />






        </div>
    </form>
</body>
</html>
