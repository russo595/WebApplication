package pkg;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(name = "AboutServlet", urlPatterns = "/about")
public class AboutServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/about.jsp").forward(request, response);
    }
}
