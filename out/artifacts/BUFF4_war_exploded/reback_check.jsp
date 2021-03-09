<%@ page import="java.io.PrintWriter" %>
<%@ page import="Dao.userDao" %>
<%@ page import="enity.user" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/7
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>验证修改密码</title>
  </head>
  <body>
<%
  request.setCharacterEncoding("utf-8");

  String name = request.getParameter("userName");
  String email = request.getParameter("userPwd");

  userDao database = new userDao("root","admin");

  user userData = database.check_email(name, email);
  database.close();
  /*  user userData = database.check_email("710465130@qq.com","710465130@qq.com");*/


  if(userData != null){
    String c1 = userData.getuserPwd();
%>
<h1>你的密码是</h1>    <h1>  <%=c1%><br></h1>

<%
}
else{
%><h1>用户名或邮箱错误,即将跳转到登录页面<br/><h3>如有问题请联系zxl15586379352@163.com</h3></h1>
<meta http-equiv="refresh" content="3; url=login.jsp">
<%
  }

%>
  </body>
</html>
