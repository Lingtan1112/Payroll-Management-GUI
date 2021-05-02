<!DOCTYPE html>
<%@page import="java.util.HashMap"%>
<%@page import="in.lingtan.CredentialOperation"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Employee</title>
</head>
<body>


<h3>Register</h3>
<form action="hashUserDetails.jsp">
	
	<label>Name  :</label><input type="text" name="name" id="name" placeholder="Employee Name" required><br>
	<label>Role  :</label>
	<select name = "role" id = "role" >
		<option value="Technical Consultant" >Technical Consultant </option>
		<option value="HR" >HR </option>
		<option value="System Administration" >System Administration</option>
		<option value="PL SQL" >PL SQL </option>
		<option value="Software Developer" >Software Developer </option>
		<option value="UI-Designer" >Ui-Designer</option>
	</select><br>
	<label>Employee ID	:</label><input type="text" name="employeeID" id="employeeID" placeholder="Employee ID" required><br>
	<label>Employee password	:</label><input type="text" name="password" id="password" placeholder="password" required><br>
	<label>Employee Email	:</label><input type="text" name="email" id="email" placeholder="Email" required><br>
	<label>Date of Birth	:</label><input type="date" name="dob" id="dob"  placeholder="Date of Birth" required><br>
	
	<label>Gender	:</label>
	<input type="radio" id="male" name="gender" value ="male" required>Male
	<input type="radio" id="female" name="gender" value ="female" required>Female<br>

	<label>Mobile Number	:</label><input type="number" name="mobileNumber" id="name" placeholder="Mobile Number" required><br>
	<label>Joined Date	:</label><input type="date" name="joinedDate" id="joinedDate" placeholder="Joined Date" required><br><br>
	<button>Click to register</button><br><br>


	<a href="index.jsp">Back to Login</a>


</form>



</body>
</html>