package Controller;

import Model.Usuario_Model;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        Usuario_Model usu = new Usuario_Model();

        String user = request.getParameter("email");
        String pass = request.getParameter("pass");
        String tipoUsuario = "";

        if (user.equals("") || pass.equals("")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            usu.setEmail(user);
            usu.setPass(pass);

            tipoUsuario = usu.tipoUser();
            String name = usu.getNameUser();
            if (usu.estado().equals("1")) {
                if (tipoUsuario != "") {
                    request.getSession().setAttribute("name", name);
                    request.getSession().setAttribute("tipo_user", tipoUsuario);

                    if (tipoUsuario.equals("Administrador")) {
                        response.sendRedirect("views/Administrador/Index/index.jsp");

                    } else if (tipoUsuario.equals("Estandar")) {
                        response.sendRedirect("views/Estandar/Menu_Estan.jsp");
                    } else {
                        response.sendRedirect("Login.jsp");
                    }
                } else {
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
            }else{
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
