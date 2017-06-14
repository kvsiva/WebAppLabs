<h1>  Called Page </h1>
<%
out.println("<p>P1 = "+request.getParameter("p1"));
out.println("<p>P2 = "+request.getParameter("p2"));
out.println("<p>P2 = "+request.getParameter("p3"));
out.println("<p>color = "+request.getAttribute("color"));
request.setAttribute("color", "red");
%>
