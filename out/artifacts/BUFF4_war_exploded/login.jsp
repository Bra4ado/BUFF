<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/1
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录界面</title>
</head>
<body>

<div align="center">
    <form method = "post" action="login_check.jsp">
    <h2>登录界面</h2>
    姓名：<input type="text" name = "userName" required placeholder="请输入用户名"/><br>
    密码：<input type="password" name = "userPwd"  required placeholder="请输入密码"><br>
    <input type="submit" value="确认登录"><input type="reset" value="重新输入">
    </form>
    <a href="register.jsp">立即注册</a>
    <a href="reback.jsp">忘记密码</a>
</div>

</body>
</html>
