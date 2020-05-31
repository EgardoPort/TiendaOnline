<%-- 
    Document   : Nuevoregistro
    Created on : 05-02-2020, 10:20:43 PM
    Author     : arace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
</head>
    <body>
        
        
<form action="mibasedb" method="POST">
    <h1> Agregar Usuario </h1>
 <table>
 <tr>
 <td><label for="nombres">Nombres:</label></td>
 <td><input type="text" id="nombres" name="nombres"></td>
 </tr>
 <tr>
 <td><label for="apellidos">Apellidos:</label></td>
 <td><input type="text" id="apellidos" name="apellidos"></td>
 </tr>
  <tr>
 <td><label for="Usuario">Usuario:</label></td>
 <td><input type="text" id="Usuario" name="usuario"></td>
 </tr>
 <tr>
 <td><label for="Contraseña">Clave: </label></td>
 <td><input type="password" id="Contraseña" name="Contraseña"></td>
 </tr>
 <tr>
 <td><label for="correoElectronico">Correo:</label></td>
 <td><input type="text" id="correo" name="correo"></td>
 </tr>
 
 <tr>     
 <td><button>Borrar Datos </button></td> 
 <td><button>Guardar</button></td>
 </tr>
 </table>
</form>
    </body>
</html>
