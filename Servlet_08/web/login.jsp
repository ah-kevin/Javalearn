<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/17
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  <form action="login.do" method="post">
    username:<input name="uname">
    <%=request.getAttribute("msg")==null?"":(String)(request.getAttribute("msg"))%>
    <br>password:<input name="pwd" type="password"><br>
    <input name="txtCode"/> <img src="code"/>
    <%=request.getAttribute("code")==null?"":(String)(request.getAttribute("code"))%>
    <input type="submit" value="login">
  </form>
</body>
</html>
