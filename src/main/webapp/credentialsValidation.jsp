<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.lingtan.CredentialOperation"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>validation</title>
</head>
<h3>Credential validation</h3>

<body>

<%
String usernameToRegister = request.getParameter("username");
String passwordToRegister = request.getParameter("password");
out.println(usernameToRegister);
boolean isValid =  CredentialOperation.credentialValidation(usernameToRegister, passwordToRegister);
if(isValid==true){
	response.sendRedirect("employeePortal.jsp");
	//out.println("Successfully registered");
}
else{
	
	response.sendRedirect("index.jsp");
	out.println("Login failed");
}
%>


<a href="index.jsp">Back to login</a>
</body>
</html>


</body>
</html>





