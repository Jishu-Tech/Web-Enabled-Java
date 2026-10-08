<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>College Login</title>
</head>
<body>

<h1>College Student Login Portal</h1>

<form action="login.jsp" method="post">

    <label>Student Name:</label>
    <input type="text" name="name" required>
    <br><br>

    <label>Password:</label>
    <input type="password" name="password" required>
    <br><br>

    <input type="submit" value="Login">

</form>

</body>
</html>