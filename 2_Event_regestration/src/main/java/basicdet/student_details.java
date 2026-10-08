package basicdet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/student_details")
public class student_details extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("nm");
        String roll = request.getParameter("rll");
        String department = request.getParameter("dpt");
        String email = request.getParameter("em");

        response.setContentType("text/html");

        response.getWriter().println("<h1>Student Details</h1>");
        response.getWriter().println("Name: " + name + "<br>");
        response.getWriter().println("Roll: " + roll + "<br>");
        response.getWriter().println("Department: " + department + "<br>");
        response.getWriter().println("Email: " + email + "<br>");
    }
}