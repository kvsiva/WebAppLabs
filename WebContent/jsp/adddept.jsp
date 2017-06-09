<html>
<body bgcolor=purple>
<font color="yellow"></font>
<jsp:useBean id="dept" scope="page" class="com.demo.model.DeptBean"/>

<jsp:setProperty name="dept" property="*"/>
<%
  dept.addDept();
%>
<h1>New department has been added with the following number [<%=dept.getDeptno()%>]</h1>
</body>
</html>