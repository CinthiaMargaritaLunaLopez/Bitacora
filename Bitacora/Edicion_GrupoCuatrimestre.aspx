<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edicion_GrupoCuatrimestre.aspx.cs" Inherits="Bitacora.Edicion_GrupoCuatrimestre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Edicion Grupo Cuatrimestre</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   

</head>
<body>
    <form id="form1" runat="server">
        <h2 class="text-center">Edicón de la asignación de turno y modalidad del cuatrimestre</h2>
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
                        <h5  class=" text-danger ">
                            Seleccione NUEVAMENTE el Programa Educativo al que se asignará</h5>
                        <div>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    <div style="width:50%; margin:auto; text-align:center; height: 92px;">
                        <h5 class=" text-danger ">
                            Seleccione NUEVAMENTE el Grupo al que se asignará</h5>
                        <div>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    <div style="width:50%; margin:auto; text-align:center; height: 92px;">
                        <h5  class=" text-danger ">
                           Seleccione NUEVAMENTE el Cuatrimestre que se asignará</h5>
                        <div>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    
                    <div  style="width:50%; margin:auto; text-align:center; height: 92px;">
                        <asp:Button  ID="Button1" CssClass="btn btn-primary mt-2" runat="server" OnClick="Button1_Click" Text="Guardar cambios" />
                    </div>
                </div>
                
                
              </div>
        </div>
    </form>
</body>
</html>
