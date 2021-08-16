<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsercionGrupoCuatrimestre.aspx.cs" Inherits="Bitacora.InsercionGrupoCuatrimestre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro y asignación de grupos a los cuatrimestres</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   

</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top:50px" class="container">

            <h2 class="text-center">Asignacion de turno y modalidad a los cuatrimestres</h2>
            <div class="row">
                
                <div class="col">
                    <div style=" height:60px; width:50%;margin:auto; text-align:center ">
                        <asp:Label ID="Label1" runat="server" type="text"  Text="Turno"></asp:Label>
                            <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div style=" height:60px; width:50%;margin:auto; text-align:center ">
                        <asp:Label ID="Label2" runat="server" Text="Modalidad"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div style=" height:60px; width:50%;margin:auto; text-align:center ">
                         <asp:Label ID="Label3" runat="server" Text="Extra: "></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div style="width:50%; margin:40px auto auto auto; text-align:center; height: 92px;">
                        <h5>
                            Seleccione el Programa Educativo al que se asignará</h5>
                        <div>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    <div style="width:50%; margin:auto; text-align:center; height: 92px;">
                        <h5>
                            Seleccione el Grupo al que se asignará</h5>
                        <div>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    <div style="width:50%; margin:auto; text-align:center; height: 92px;">
                        <h5>
                           Seleccione el Cuatrimestre que se asignará</h5>
                        <div>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    
                    <div  style="width:50%; margin:auto; text-align:center; height: 92px;">
                        <asp:Button  ID="Button1" CssClass="btn btn-primary mt-2" runat="server" OnClick="Button1_Click" Text="Asignar Turno y Modalidad" />
                    </div>
                </div>
                
                
              </div>
        </div>
        
         <div style="margin-top:50px" class="container">
           
            <div class="row">
                <div class="col">                  
                        <h2>Listado de turnos y modalidades de los cuatrimestres&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </h2>
                          <asp:GridView CssClass="table" ID="GridView1" runat="server">

                              <Columns>
                                
                                <asp:TemplateField HeaderText="Editar Asignacion" SortExpression="[Id Especifico]"><ItemTemplate>
                                                                  <asp:Button cssClass="btn btn-warning m-2"  ID='LinkButton2' runat="server" OnClick="Editar_registro" Text="Editar" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Eliminar Asignacion" SortExpression="[Id Especifico]"><ItemTemplate>
                                                                  <asp:Button cssClass="btn btn-danger m-2"  ID='LinkButton3' runat="server"  OnClick="Eliminar_registro" Text="Eliminar" CommandArgument='<%# Bind("[Codigo]")%>' >  </asp:Button>
                                
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
