<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/5
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>


  <body>

    <form method = "post" action="reback_check.jsp">
    <h2>找回密码界面</h2>

    姓名：<input type="text" name = "userName" required placeholder="请输入用户名"/><br>
    邮箱：<input type="password" name = "userPwd"  required placeholder="请输入邮箱"><br>
    <input type="submit" value="确认找回"><input type="reset" value="重新输入"></form>

  </body>
</html>
