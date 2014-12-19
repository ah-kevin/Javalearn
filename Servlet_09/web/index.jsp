<%@ page import="bean.Employee" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/18
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <%
    Employee emp=new Employee();
    emp.setName("lisa");
    emp.setGender("f");
    request.setAttribute("k",emp);
  %>
  <%--if标签--%>
  <c:if test="${k.gender=='f'}">女</c:if>
  </body>
</html>
