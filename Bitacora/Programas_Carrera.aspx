<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Programas_Carrera.aspx.cs" Inherits="Bitacora.Programas_Carrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Programas por carrera</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</head>
<body>
    <form id="form1" runat="server">
        


               <div style="margin-top:50px" class="container">
           
            <div class="row">
                <div class="col">                  
                        <h2>Programas de esa carrera&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </h2>
                          <asp:GridView CssClass="table"  ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                              <HeaderStyle CssClass="thead-dark" />

              
                            </asp:GridView>               
                </div>
               
              </div>
        </div>

    </form>
</body>
</html>
