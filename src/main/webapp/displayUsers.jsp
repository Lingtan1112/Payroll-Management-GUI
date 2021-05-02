<!DOCTYPE html>
<%@page import="in.lingtan.EmployeeOperations"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.lingtan.CredentialOperation"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Users</title>
</head>

<h3>Employee - Credentials</h3>
<% HashMap<String, String> masterCredentialData = CredentialOperation.getCredentials();
//out.println(" Total Employees : "+masterCredentialData.size());
%>

<%
HashMap<String,HashMap<String,String>> masterEmployeeDataHash = EmployeeOperations.getMasterEmployeeDataHash();
ArrayList<HashMap<String, String>> masterEmployeeData = EmployeeOperations.getMasterEmployeeData();
//out.println("Total array of details :"+  masterEmployeeData.size()+masterEmployeeData);
out.println("Master Data Hash table :"+  masterEmployeeData.size()+masterEmployeeDataHash);
//HashMap<String,String> employeeDatas = EmployeeOperations.getEmployeeDatas();
//out.println("Details hash :"+ employeeDatas.size()+employeeDatas);
%>


<br>
<table border="1">
<thead>
<tr>
<th>EmployeeID</th>
<th> Name </th>
<th>Details</th>
</tr>
</thead>
<tbody>
<br>

<%
int i=1;
for(String username  : masterCredentialData.keySet()){
	out.println( "<tr>");
	out.println("<td>" + username + "</td>");
	out.println("<td>" + masterCredentialData.get(username) + "</td>");
%>
<td><a href="viewAllDetailOfEmployee.jsp?employeeName=<%=masterCredentialData.get(username)%>">View Details</a></td>
<%
	//out.println("<td>" + "<a href = 'viewAllDetailOfEmployee.jsp'>"+"View Detail"+"</a>" + "</td>");
	out.println( "</tr>");
	i++;
}
%>




</tbody>
</table>

<body>
<a href ="adminPortal.jsp">Main menu</a><br>

</body>
</html>