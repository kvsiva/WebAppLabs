<%@ page isErrorPage="true"%>
<h2>Error Page</h2>
<%=request.getRequestURL()%>
<h2>Error</h2>
<%=exception.toString()%>