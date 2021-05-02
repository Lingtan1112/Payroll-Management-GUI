<!DOCTYPE html>
<%@page import="in.lingtan.EmployeeOperations"%>
<%@page import="java.util.HashMap"%>
<%@page import="in.lingtan.CredentialOperation"%>
<%@page import="java.security.KeyStore.Entry"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>welcome</h3>

<%
HashMap<String,HashMap<String,String>> masterEmployeeDataHash = EmployeeOperations.getMasterEmployeeDataHash();
out.println("Master Data Hash table :"+ masterEmployeeDataHash.size() + masterEmployeeDataHash);
%>
<%
String employeeName = request.getParameter("employeeName");
out.println(employeeName+"///////////////////////////////////////////////////////////////////////////////////////////////////////");
HashMap<String,String> onlyData = masterEmployeeDataHash.get("Lingtan Andrew");
out.println(onlyData);

%>
</body>
</html>