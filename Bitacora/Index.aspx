<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Bitacora.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sistema de bitácora</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,400;0,700;0,900;1,600;1,700&display=swap" rel="stylesheet">
</head>
<body>

    
    <style>
        *{
            font-family: 'Source Sans Pro', sans-serif;
        }

        .bg{
        background-image: url(img/bg2.png);
        background-repeat: no-repeat;
        background-size: cover;
        max-width: 100%;
        background-position: center;
        height: 600px;
        }

        .ft{
    max-width: 100%;
    height: 100px;
    background-color: black;
   
        }


    </style>

    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-light" style="background-color: #006A53; height: 75px;">
    <div class="container-fluid ">
      <span class="navbar-brand mb-0 h1" style="color: #fff; font-weight: bold; margin: 0 auto;">Bitácora de laboratorio para la Universidad Tecnológica de Puebla</span>
    </div>
  </nav>
            <div style="background:transparent; position:absolute; color: floralwhite; font-weight:bold; padding-left:20px;">
                <p>Recuerde que algunas tablas dependen de otras, por lo que el orden de recomendado inserción es:</p>
                <ul style="list-style:none; display:flex; justify-content:space-between">
                    <li>1. Carrera</li>
                     <li>2. Programa Educativo</li>
                     <li>3. Cuatrimestre</li>
                     <li>4. Grupo</li>
                     <li>5. Materia</li>
                     <li>6. GrupoCuatrimestre</li>
                    
                </ul>
            </div>
  <div class="d-flex justify-content-center bg text-center">
    <div class="row" style="margin-top: 100px;">
        <div class="col-lg-3 ">
            <h5 style="color: #fff; font-weight: bold;">Carreras</h5>
            <a class="btn btn-success btn-lg" href="InsercionCarrera.aspx" role="button" style="background-color: #006A53; ">Realizar CRUD</a>       
         </div>
         
         <div class="col-lg-3">
            <h5 style="color: #fff; font-weight: bold;  text-align: center; display: inline-block;">Programas educativos</h5>
            <a class="btn btn-success btn-lg" href="InsercionProgramaEducativo.aspx" role="button" style="background-color: #006A53; ">Realizar CRUD</a>       
         </div>

         <div class="col-lg-3">
            <h5 style="color: #fff; font-weight: bold;  text-align: center; ">Cuatrimestre</h5>
            <a class="btn btn-success btn-lg" href="Insercion_Cuatrimestre.aspx" role="button" style="background-color: #006A53; ">Realizar CRUD</a>       
         </div>

         <div class="col-lg-3">
            <h5 style="color: #fff; font-weight: bold;  text-align: center;">Grupo</h5>
            <a class="btn btn-success btn-lg" href="Insercion_grupo.aspx" role="button" style="background-color: #006A53; ">Realizar CRUD</a>       
         </div>
         
         <div class="col-lg-6">
            <h5 style="color: #fff; font-weight: bold;  text-align: center; ">Materia</h5>
            <a class="btn btn-success btn-lg" href="Insercionmateria.aspx" role="button" style="background-color: #006A53; ">Realizar CRUD</a>       
         </div>

         <div class="col-lg-6">
            <h5 style="color: #fff; font-weight: bold;  text-align: center; ">GrupoCuatrimestre</h5>
            <a class="btn btn-success btn-lg" href="InsercionGrupoCuatrimestre.aspx" role="button" style="background-color: #006A53; ">Realizar CRUD</a>       
         </div>

        

        </div>

        
        
        
  </div>

<div class="ft text-center" style="background-color: #006A53;">
   <p class="text-light" style="padding: 30px; font-weight: bold;">© 2021 Todos los derechos reservados</p>
</div>


        </div>
    </form>
</body>
</html>
