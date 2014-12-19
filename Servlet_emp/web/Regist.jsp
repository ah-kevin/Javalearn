<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/18
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title></title>
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
      padding-bottom: 40px;
    }
    .sidebar-nav {
      padding: 9px 0;
    }

    @media (max-width: 980px) {
      /* Enable use of floated navbar text */
      .navbar-text.pull-right {
        float: none;
        padding-left: 5px;
        padding-right: 5px;
      }
    }


  </style>
</head>
<body>
<form action="regist.do" method="post" class="definewidth m20">
  <table class="table table-bordered table-hover definewidth m10">
    <tr>
      <td width="10%" class="tableleft">登录名</td>
      <td><input type="text" name="username"/></td>
    </tr>
    <tr>
      <td class="tableleft">密码</td>
      <td><input type="password" name="password"/></td>
    </tr>
    <tr>
      <td class="tableleft">真实姓名</td>
      <td><input type="text" name="realname"/></td>
    </tr>
    <tr>
      <td class="tableleft">状态</td>
      <td>
        <p>
          男
          <input type="radio" name="sex" class="input-medium" value="m">
          女
          <input type="radio" name="sex" class="input-medium" value="f">
        </p>
      </td>
    </tr>
    <td class="tableleft">验证码

    </td>

    <td>
      <input type="text" name="number" class="input-medium" placeholder="验证码">
        <%--<%=(request.getAttribute("c_msg") == null) ? " " : (String) (request.getAttribute("c_msg"))%>--%>
      ${c_msg}
      <img src="code"  style="width: 100px;height: 35px;padding-bottom: 15px;cursor: pointer;" onclick="this.src='code?'+(new Date()).getTime()" href="javascript:;">
    </td>


    <tr>
      <td class="tableleft"></td>
      <td>
        <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
      </td>
    </tr>
  </table>
</form>
</body>
</html>
<script>
  $(function () {
    $('#backid').click(function(){
      window.location.href="index.jsp";
    });

  });
</script>