<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");

    if (name != null && password != null &&
        password.equals("1234")) {

        session.setAttribute("studentName", name);

        response.sendRedirect("dashboard.jsp");

    } else {
%>

        <h2>Invalid Password!</h2>
        <a href="index.jsp">Try Again</a>

<%
    }
%>