<%-- 
    Document   : NuevoProducto
    Created on : 05-02-2020, 09:07:28 PM
    Author     : arace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>  
       form {
  
  margin: 0 auto;
  width: 500px;
  /* Esquema del formulario */
  padding: 1em;
  border: 1px solid #CCC;
  border-radius: 1em;
}

label {
  /* Tamaño y alineación uniforme */
  display: inline-block;
  width: 90px;
  text-align: right;
}

input, 
textarea {
  /* Para asegurarse de que todos los campos de texto tienen la misma configuración de letra
     Por defecto, las áreas de texto tienen un tipo de letra monoespaciada */
  font: 1em sans-serif;

  /* Tamaño uniforme del campo de texto */
  width: 400px;
  box-sizing: border-box;

  /* Hacer coincidir los bordes del campo del formulario */
  border: 1px solid #999;
}

input:focus, 
textarea:focus {
  /* Destacado adicional para elementos que tienen el cursor */
  border-color: #000;
}

textarea {
  /* Alinear los campos de texto multilínea con sus etiquetas */
  vertical-align: top;

  /* Proporcionar espacio para escribir texto */
  height: 5em;
}

.button {
  /* Alinear los botones con los campos de texto */
  padding-left: 90px;
  
 
}
button{
    height:20px; 
    width:100px; 
    margin: -20px -50px; 
    position:relative;
    top:50%; 
    left:50%;
    align-items: center;
  justify-content: center;
  
}

</style> 
        <title>Nuevo Producto</title>
    </head>
    <body>
        
  <div>
      
             
<form action="mibasedb" method="POST">
    <h3> Agregar producto </h3>
   <table>
 
 <tr>
 <td><label for="producto">Producto:</label></td>
 <td><input type="text" id="producto" name="producto"></td>
 </tr>
 <tr>
 <td><label for="Cantidad">Cantidad:</label></td>
 <td><input type="text" id="Cantidad" name="Cantidad"></td>
 </tr>
  
 </tr>
  <tr>
 <td><label for="Precio">$Precio:</label></td>
 <td><input type="text" id="Precio" name="Precio"></td>
 </tr>
 
 
  <td><button>Borrar</button></td>
 <td><button>Guardar</button></td>
 
 </table>
    </div>
    </body>
</html>
