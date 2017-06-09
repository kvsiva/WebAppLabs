<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String num;
num=request.getParameter("num");
if (num==null)
	num="";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Even Test</title>
</head>
<body bgcolor="#dddddd">
<form action="even.jsp" method="post">
Enter a number <input type=text name=num size=10 value=<%=num%>>
<p> <input type=submit value="Submit">
</form>
<%
  if (num.length()>0)
  {
	  int n=Integer.parseInt(num);
	  if (n%2==0)
		  out.println("<h3>Even Number </h3>");
	  else
		  out.println("<h3>Odd Number</h3>");
  }

%>
</body>
</html>