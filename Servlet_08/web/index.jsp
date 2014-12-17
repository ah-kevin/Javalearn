<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/17
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String uname= (String) session.getAttribute("uname");
  if (uname==null){
    //sessiong中没有登录信息,必须回到登录页面
    response.sendRedirect("login.jsp");
    return;
  }
%>
<html>
<head>
    <title></title>
</head>
<body>
欢迎你:<%=(String)session.getAttribute("uname")%>
<a href="logout.do">登出</a>
</body>
</html>
