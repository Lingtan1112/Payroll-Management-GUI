<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="in.lingtan.EmployeeOperations"%>
<%@page import="java.util.HashMap"%>
<%@page import="in.lingtan.CredentialOperation"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Master Data</title>
</head>
<body>
<h1>Hello</h1>
<%
HashMap<String, String> masterCredentialStorage = CredentialOperation.getCredentials();
//HashMap<String,HashMap<String,String>> masterEmployeeDataHash = EmployeeOperations.getMasterEmployeeDataHash();
//ArrayList<HashMap<String, String>> masterEmployeeData = EmployeeOperations.getMasterEmployeeData();
%>

<%
String usernameToRegister = request.getParameter("employeeID");
String passwordToRegister = request.getParameter("password");
CredentialOperation.registerEmployee(usernameToRegister, passwordToRegister);
out.println("Successfully Registered User");
//response.sendRedirect("displayUsers.jsp");
%>

<%
String nameToRegister = request.getParameter("name");
String roleToRegister = request.getParameter("role");
String emailToRegister = request.getParameter("email");
String dobToRegister = request.getParameter("dob");
String genderToRegister = request.getParameter("gender");
String mobileNumberToRegister = request.getParameter("mobileNumber");
String joinedDateToRegister = request.getParameter("joinedDate");
HashMap<String, HashMap<String, String>> individualDataAlone = EmployeeOperations.addEmployee(nameToRegister, roleToRegister ,usernameToRegister, passwordToRegister, emailToRegister ,dobToRegister, genderToRegister,  mobileNumberToRegister,  joinedDateToRegister); 

//out.println(masterEmployeeData);
response.sendRedirect("displayUsers.jsp");
%>



<a href="register.jsp">Register User</a>
<a href="adminPortal.jsp">Admin portal</a>
<a href ="employeePortal.jsp">Main menu</a>
</body>
</html>