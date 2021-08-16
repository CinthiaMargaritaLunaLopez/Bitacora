<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insercion_grupo.aspx.cs" Inherits="Bitacora.Insercion_grupo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Insercion Grupo</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        

        <div style="margin-top:50px" class="container">

            <h2>Insercion de grupo</h2>
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
                        <asp:Button  ID="Button1" CssClass="btn btn-primary mt-2" runat="server" OnClick="Button1_Click" Text="Registrar Grupo" />
                    </div>
                </div>
                
                
              </div>
        </div>


      <div style="margin-top:50px" class="container">
           
            <div class="row">
                <div class="col">                  
                        <h2>Listado de Grupos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </h2>
                          <asp:GridView CssClass="table" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                              <Columns>
                                
                                <asp:TemplateField HeaderText="Editar Materia" SortExpression="[Id Especifico]"><ItemTemplate>
                                                                  <asp:Button cssClass="btn btn-warning m-2"  ID='LinkButton2' runat="server" OnClick="EditarGrupo" Text="Editar" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Eliminar Materia" SortExpression="[Id Especifico]"><ItemTemplate>
                                                                  <asp:Button cssClass="btn btn-danger m-2"  ID='LinkButton3' runat="server" OnClick="EliminarGrupo" Text="Eliminar" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
                                </ItemTemplate>
                                </asp:TemplateField>
                             </Columns>                                                      
                            </asp:GridView>               
                </div>
               
              </div>
        </div>

    </form>
</body>
</html>
