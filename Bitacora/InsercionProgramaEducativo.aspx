<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsercionProgramaEducativo.aspx.cs" Inherits="Bitacora.InsercionProgramaEducativo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Programas educativos</title>
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
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR PROGRAMA EDUCATIVO" />
            <p>
                &nbsp;</p>
            &nbsp;&nbsp;&nbsp;
        </div>
        <div  class="container">
            <h2>Programas educativos disponibles</h2>
            <asp:GridView CssClass="table" ID="GridView1" runat="server">

                <Columns>
                    
                <asp:TemplateField HeaderText="Editar P.E." SortExpression="[Id Especifico]"><ItemTemplate>
                                                    <asp:Button cssClass="btn btn-warning m-1"  OnClick="EditarPrograma"  ID='LinkButton2' runat="server" Text="Editar P.E." CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Eliminar Programa" SortExpression="[Id Especifico]"><ItemTemplate>
                                                    <asp:Button cssClass="btn btn-danger m-1" OnClick="EliminarPrograma"  ID='LinkButton3' runat="server" Text="Eliminar P.E." CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>    
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
