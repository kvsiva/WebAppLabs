<%@ page import="java.util.*"%>
<html>
<body bgcolor="lightblue">
<%
String name;
String value;

name=request.getParameter("name");
value=request.getParameter("value");

if(!(name==null || name.length()==0 || value==null ||value.length()==0)){
	application.setAttribute(name,value);
}
%>
<h1>Context Demo</h1>
<hr>
<form action="/WebAppLabs/jsp/context.jsp" method=post>
<table cellpadding=5>
<tr><td>Name
<td><input type=text name=name size=20>
</tr>
<tr><td>Value
<td><input type=text name=value size=20>
</tr>
</table>
<input type=submit value="Add">
</form>

<%  
 //display content of Context
 
 Enumeration e=application.getAttributeNames();
%>

<table border=1 cellpadding=5>
<tr style="background-color:navy;color:white">
<th>Name
<th>Value
</tr>
<%
   Object v;
   while (e.hasMoreElements())
   {
	   name=(String)e.nextElement();
	   v=application.getAttribute(name);
	   out.println("<tr><td>"+name +"<td>"+v.toString()+"</tr>");
	   
   }
%>
</table>
</body>
</html>
