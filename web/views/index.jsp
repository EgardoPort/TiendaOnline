<%@page import="java.util.ArrayList"%>
<%@page import="Model.Usuario_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Usuario_Model user = new Usuario_Model();
    ArrayList<Usuario_Model> lista = user.getUsers();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Fecha de nacimiento</th>
                    <th>Teléfono</th>
                    <th>Correo</th>
                    <th>Genero</th>
                    <th>Estado</th>
                    <th>Tipo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i < lista.size(); i++) { %>
                    <tr>
                        <td><%= lista.get(i).getNombre_user()%></td>
                        <td><%= lista.get(i).getApellido_user()%></td>
                        <td><%= lista.get(i).getFecha_nacimiento()%></td>
                        <td><%= lista.get(i).getTelefono()%></td>
                        <td><%= lista.get(i).getEmail()%></td>
                        <td><%= lista.get(i).getGenero()%></td>
                        <td><%= lista.get(i).getEstado()%></td>
                        <td><%= lista.get(i).getTipo_user()%></td>
                    </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
