<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Report Card</title>
</head>

<body>

<%
    String name = request.getParameter("name");
    String roll = request.getParameter("roll");

    int english = Integer.parseInt(request.getParameter("english"));
    int math = Integer.parseInt(request.getParameter("math"));
    int science = Integer.parseInt(request.getParameter("science"));

    int total = english + math + science;

    double percentage = (total / 300.0) * 100;

    String grade;

    if (percentage >= 90) {
        grade = "A+";
    } else if (percentage >= 80) {
        grade = "A";
    } else if (percentage >= 70) {
        grade = "B";
    } else if (percentage >= 60) {
        grade = "C";
    } else if (percentage >= 50) {
        grade = "D";
    } else {
        grade = "F";
    }
%>

<h1>Student Report Card</h1>

<p><b>Student Name:</b> <%= name %></p>

<p><b>Roll Number:</b> <%= roll %></p>

<hr>

<p><b>English:</b> <%= english %></p>

<p><b>Mathematics:</b> <%= math %></p>

<p><b>Science:</b> <%= science %></p>

<hr>

<h3>Total Marks: <%= total %> / 300</h3>

<h3>Percentage: <%= percentage %>%</h3>

<h3>Grade: <%= grade %></h3>

</body>
</html>