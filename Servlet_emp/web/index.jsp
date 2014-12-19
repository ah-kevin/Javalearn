<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/18
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>后台管理系统</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="Css/bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css"/>
  <link rel="stylesheet" type="text/css" href="Css/style.css"/>
  <script type="text/javascript" src="Js/jquery.js"></script>
  <script type="text/javascript" src="Js/jquery.sorted.js"></script>
  <script type="text/javascript" src="Js/bootstrap.js"></script>
  <script type="text/javascript" src="Js/ckform.js"></script>
  <script type="text/javascript" src="Js/common.js"></script>
  <style type="text/css">
    body {
      padding-top: 40px;
      padding-bottom: 40px;
      background-color: #f5f5f5;
    }

    .form-signin {
      max-width: 300px;
      padding: 19px 29px 29px;
      margin: 0 auto 20px;
      background-color: #fff;
      border: 1px solid #e5e5e5;
      -webkit-border-radius: 5px;
      -moz-border-radius: 5px;
      border-radius: 5px;
      -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
      -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
      box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
    }

    .form-signin .form-signin-heading,
    .form-signin .checkbox {
      margin-bottom: 10px;
    }

    .form-signin input[type="text"],
    .form-signin input[type="password"] {
      font-size: 16px;
      height: auto;
      margin-bottom: 15px;
      padding: 7px 9px;
    }

  </style>
</head>
<body>
<div class="container">

  <form class="form-signin" method="post" action="index.do">
    <h2 class="form-signin-heading">登录系统</h2>
    <input type="text" name="username" class="input-block-level" placeholder="用户名">
    <%--<%=(request.getAttribute("msg") == null) ? " " : (String) (request.getAttribute("msg"))%>--%>
    ${msg}
    <input type="text" name="name" class="input-block-level" placeholder="真实姓名">
    <input type="password" name="pwd" class="input-block-level" placeholder="密码">
    <p>
      男
      <input type="radio" name="sex" class="input-medium" value="m" checked="checked">
      <女></女>
      <input type="radio" name="sex" class="input-medium" value="f">
    </p>
   <P>
    <%--<%=(request.getAttribute("c_msg") == null) ? " " : (String) (request.getAttribute("c_msg"))%>--%>
     ${c_msg}
     </P>
    <input type="text" name="number" class="input-medium" placeholder="验证码">
    <img src="code"  style="width: 100px;height: 35px;padding-bottom: 15px;cursor: pointer;" onclick="this.src='code?'+(new Date()).getTime()" href="javascript:;">
    <button class="btn btn-large btn-primary" type="submit">登录</button>
    <button class="btn btn-large btn-primary" type="button" id="regist">注册</button>
  </form>
  <script>
    $(function(){
        $("#regist").click(function(){
        window.location.href="Regist.jsp"
      })
    })
  </script>
</div>
</body>
</html>
