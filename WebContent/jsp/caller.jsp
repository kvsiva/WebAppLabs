
<!--  http://localhost:8080/SampleWeb/jsp/caller.jsp?p1=10&p2=20 -->
<h1>  Caller Page </h1>
<%
out.println("<p>P1 = "+request.getParameter("p1"));
out.println("<p>P2 = "+request.getParameter("p2"));
request.setAttribute("color", "red");
%>

<jsp:include page="/jsp/called.jsp">
  <jsp:param name="p3" value="30"/>
</jsp:include>
<h2>Back in Caller</h2>