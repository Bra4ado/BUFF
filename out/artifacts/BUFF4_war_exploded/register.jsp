<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/1
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>新用户注册</title>

      <script src="js/jquery-1.12.0.js"></script>
      <script src="js/jquery.validate.js"></script>
      <script src="js/messages_zh.js"></script>
      <script type="text/javascript">
          $(function(){
              $("#reg").validate();

          });
      </script>
  </head>
  <body>
  <div  align="center">
      <form method = "post" action="register_check.jsp" >
          <h2>注册页面</h2>
          输入用户名：<input type="text" name = "userName" required placeholder="请输入用户名"/><br>
          输入密码：<input type="password" name = "userPwd" required id="userPwd" placeholder="请输入密码"><br>
          再次输入密码：<input type="password" name = "reuserPwd" required id="reuserPwd" placeholder="请输入密码"><br>
          邮箱：<input type="text" name = "userSteamId" required id="usersteamid" placeholder="请输入正确的邮箱格式"/><br>

          <input type="submit" value="提交注册"><input type="reset" value="重新输入">
      </form>
  </div>

  </body>
</html>
