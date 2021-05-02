<!DOCTYPE html>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.lingtan.CredentialOperation"%>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<h2>Welcome</h2>
<h3>Login page</h3>
<form action="credentialsValidation.jsp">
<input type = "text" name="username" id="username" placeholder="Employee ID" required>
<input type = "password" name="password" id="password" placeholder="password" required>
<button>Login</button><br>
</form><br>


<a href="adminLogin.jsp">admin login</a><br>
</body>
</html>