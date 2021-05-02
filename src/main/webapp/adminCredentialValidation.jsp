<!DOCTYPE html>
<%@page import="in.lingtan.CredentialOperation"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin Validation</title><br>
</head>
<body>
<%
String adminUsername = request.getParameter("adminUsername");
String adminPassword = request.getParameter("adminPassword");
boolean isValidAdmin = CredentialOperation.adminValidation(adminUsername, adminPassword);
if(isValidAdmin==true){
	response.sendRedirect("adminPortal.jsp");
}
else{
	out.println("Invalid Credentials");
}

%>
<br><a href="adminLogin.jsp">click to retry again</a>
</body>
</html>