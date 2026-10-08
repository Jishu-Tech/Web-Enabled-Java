package student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/student_result")
public class student_result extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");

        int java = Integer.parseInt(request.getParameter("java"));
        int os = Integer.parseInt(request.getParameter("os"));
        int dbms = Integer.parseInt(request.getParameter("dbms"));

        int total = java + os + dbms;

        double average = total / 3.0;

        String grade;

        if (average >= 90) {
            grade = "A+";
        } else if (average >= 80) {
            grade = "A";
        } else if (average >= 70) {
            grade = "B";
        } else if (average >= 60) {
            grade = "C";
        } else if (average >= 50) {
            grade = "D";
        } else {
            grade = "F";
        }

        response.setContentType("text/html");

        response.getWriter().println("<h1>Student Result</h1>");
        response.getWriter().println("Name: " + name + "<br>");
        response.getWriter().println("Java: " + java + "<br>");
        response.getWriter().println("OS: " + os + "<br>");
        response.getWriter().println("DBMS: " + dbms + "<br>");
        response.getWriter().println("Total: " + total + "<br>");
        response.getWriter().println("Average: " + average + "<br>");
        response.getWriter().println("Grade: " + grade);
    }
}