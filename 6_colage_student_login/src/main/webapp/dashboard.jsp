<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String studentName = (String) session.getAttribute("studentName");

    if (studentName == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
</head>

<body>

<h1>Student Dashboard</h1>

<h2>Welcome, <%= studentName %>!</h2>

<p>You are successfully logged in.</p>

<a href="dashboard.jsp">Dashboard</a>
<br><br>

<a href="logout.jsp">Logout</a>

</body>
</html>