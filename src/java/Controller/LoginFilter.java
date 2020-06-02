/*package Controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);
        
        String Uri = request.getContextPath() + "/Login.jsp";
        //String tipo = session.getAttribute("tipo_user").toString();
        
        boolean loggeadIn = session != null && session.getAttribute("tipo_user") != null;
        boolean loginRequest = request.getRequestURI().equals(Uri);
        
        if(loggeadIn || loginRequest){
            chain.doFilter(req, res);
            return;
        }else{
            response.sendRedirect(request.getContextPath() + "/Login.jsp");
            return;
        }
        String requestPath = request.getRequestURI();
        //String tipo = session.getAttribute("tipo_user").toString();
        
        if (needsAuthentication(requestPath) == true) {
            response.sendRedirect(request.getContextPath() + "/Login.jsp");
            return;
        } else if(session.getAttribute("tipo_user") != null){
            response.sendRedirect(request.getContextPath() + "/Login.jsp");
            return;
        }else{
            chain.doFilter(req, res);
            return;
        }
    }

    public void destroy() {
    }

    private boolean needsAuthentication(String url) {

        if (url.endsWith("Login.jsp")) {
            return false;
        }

        return true;
    }
}*/
