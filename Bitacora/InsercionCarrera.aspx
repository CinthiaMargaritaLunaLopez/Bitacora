<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsercionCarrera.aspx.cs" Inherits="Bitacora.InsercionCarrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carreras</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        


        <div style="margin-top:50px" class="container">

            <h2>Registro de carreras nuevas</h2>
            <div class="row">
                
                <div class="col">
                    <div style=" height:100px; width:50%;margin:auto; text-align:center ">
                        <asp:Label ID="Label1" runat="server" type="text"  Text="Ingrese el nombre de la carrera"></asp:Label>
                            <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
          
                    </div>
                </div>
                <div class="col">
                    <p>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Registrar Carrera" />
                    </p>
                </div>
                <div class="col">
                   <p>
                        Estado de la inserción:&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </p>
                </div>
              </div>
        </div>

        <div style="margin-top:50px" class="container">
           
            <div class="row">
                <div class="col">                  
                        <h2>Listado de carreras disponibles&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </h2>
                          <asp:GridView CssClass="table" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                              <Columns>
                                 <asp:templatefield headertext="Programas Educativos de esta carrera" SortExpression="[Id Especifico]">
                                <itemtemplate >
                                  <asp:Button cssClass="btn btn-primary m-2" OnClick="VerProgramasEducativos"  ID='LinkButton1' runat="server" Text="Programas Educativos" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                </itemtemplate>
                              </asp:templatefield>
                                <asp:TemplateField HeaderText="Editar Carrera" SortExpression="[Id Especifico]"><ItemTemplate>
                                                                  <asp:Button cssClass="btn btn-warning m-2"  OnClick="EditarCarrera"  ID='LinkButton2' runat="server" Text="Editar" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Eliminar Carrera" SortExpression="[Id Especifico]"><ItemTemplate>
                                                                  <asp:Button cssClass="btn btn-danger m-2"  OnClick="EliminarCarrera"  ID='LinkButton3' runat="server" Text="Eliminar" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
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
