
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="cnx.conexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Datos Formularios</title>
    </head>
    <body>
        <h1>datos del formulario</h1> 
        
        <%
            String usuario;
            String clave;
            
            usuario=request.getParameter("email");
            clave=request.getParameter("password");
           
        conexionDB conx = new conexionDB();
            Connection reg = conx.getConnection();

            //Definimos las variables a utilizar
            String sql;
            ResultSet resultado;
           
                
           sql = " SELECT idusuario FROM usuarios WHERE"+ "correo='" + usuario + "' And clave='" + clave + "'";
            try {
            PreparedStatement psd =reg.prepareStatement(sql);
            resultado=psd.executeQuery();  
            if(resultado.next()){
               HttpSession misession = request.getSession(true);
              misession.setAttribute("correo", usuario);
              out.print("</br>");
              out.print("Sesion: " + misession.getAttribute("correo"));
              response.sendRedirect("menu.jsp");
              
              
              }
              else{
              //Fallo Login
              response.sendRedirect("index.jsp");
              }
            
            } catch (SQLException ex) {
            out.print(ex);
           
        }
                           
            %>
        
    </body>
</html>