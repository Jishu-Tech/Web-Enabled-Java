<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>School Report Card</title>
</head>

<body>

<h1>School Report Card Generator</h1>

<form action="result.jsp" method="post">

    <label>Student Name:</label>
    <input type="text" name="name" required>
    <br><br>

    <label>Roll Number:</label>
    <input type="text" name="roll" required>
    <br><br>

    <label>English Marks:</label>
    <input type="text" name="english" required>
    <br><br>

    <label>Mathematics Marks:</label>
    <input type="text" name="math" required>
    <br><br>

    <label>Science Marks:</label>
    <input type="text" name="science" required>
    <br><br>

    <input type="submit" value="Generate Report Card">

</form>

</body>
</html>