package Controller;

import Model.Usuario_Model;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class Usuario_Controller extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }// </editor-fold>

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String obtener = request.getParameter("accion");
        Usuario_Model user = new Usuario_Model();
        
        switch (obtener) {
            case "cambiar":
                int id = Integer.parseInt(request.getParameter("id"));
                String email = request.getParameter("email");
                user.setId_usuarios(id);
                user.setEmail(email);
                user.cambiar();
                response.sendRedirect(request.getContextPath() + "/views/Administrador/Usuario/lista.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String obtener = request.getParameter("accion");
        Usuario_Model user = new Usuario_Model();

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fecha = request.getParameter("fecha");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String pa = request.getParameter("pass");
        String genero = request.getParameter("genero");
        String estado = request.getParameter("estado");
        String tipo = request.getParameter("tipo");

        switch (obtener) {
            case "saveAdmin":
                user.setNombre_user(nombre);
                user.setApellido_user(apellido);
                user.setFecha_nacimiento(fecha);
                user.setTelefono(telefono);
                user.setEmail(correo);
                user.setPass(pa);
                user.setGenero(genero);
                user.setEstado(estado);
                user.setTipo_user(tipo);

                if (user.agregarUserAdmin()) {
                    response.sendRedirect(request.getContextPath() + "/views/Administrador/Usuario/lista.jsp");
                } else {
                    response.sendRedirect(request.getContextPath() + "/views/Administrador/Usuario/lista.jsp");
                }
                break;
                
            case "update":
                user.setId_usuarios(Integer.parseInt(request.getParameter("id")));
                user.setNombre_user(nombre);
                user.setApellido_user(apellido);
                user.setFecha_nacimiento(fecha);
                user.setTelefono(telefono);
                user.setEmail(correo);
                user.setPass(pa);
                user.setGenero(genero);
                user.setEstado(estado);
                user.setTipo_user(tipo);
                
                if(user.update()){
                    response.sendRedirect(request.getContextPath() + "/views/Administrador/Usuario/lista.jsp");
                }else{
                    response.sendRedirect(request.getContextPath() + "/views/Administrador/Usuario/Updateregistro.jsp");
                }
                break;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
