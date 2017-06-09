<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=wheat>
<center>
<h1>List of Departments</h1>
<%@ page import="java.sql.*" %>
<%
//connect to oracle using thin driver
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","tiger");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from dept");
%>

<table border=1 cellpadding=5>
<tr>
<th>DeptNo
<th>Name
<th>Location
</tr>

<%
while (rs.next()){
%>
<tr>
<td><%= rs.getInt(1)%> </td>
<td><%= rs.getString(2)%> </td>
<td><%= rs.getString(3)%> </td>
>/tr>
<%
} //end of while
rs.close();
st.close();
con.close();
%>
</table>
</center>
</body>
</html>