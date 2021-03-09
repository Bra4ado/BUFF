<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/1
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>判断登陆状态</title>
</head>
<body>
<%@ page import="enity.user" %>
<%@ page import="Dao.userDao" %>
<%
  request.setCharacterEncoding("utf-8");

  PrintWriter printWriter = response.getWriter();

  String name = request.getParameter("userName");
  String pwd = request.getParameter("userPwd");

  userDao database = new userDao("root","admin");
  database.showConnect();
  user userData = database.check(name, pwd);
  database.close();
  if(userData == null){
    printWriter.write("用户名或密码错误");
    %>即将跳转到登录页面<%
    %><meta http-equiv="refresh" content="2; url=login.jsp"><%
  }

  else if(userData.getUserName().equals("root")){
    printWriter.write("欢迎资本家登录");
  %><meta http-equiv="refresh" content="1; url=root.jsp"><%
  }

  else if(userData.getUserName().equals("author")){
    printWriter.write("欢迎小编登录");
    %><meta http-equiv="refresh" content="1; url=author.jsp"><%
  }
  else{
    printWriter.write("欢迎"+userData.getUserName()+"登录");
    session.setAttribute("str",new String(userData.getUserName()));
    %><meta http-equiv="refresh" content="1; url=index_hd.jsp"><%
  }
%>
</body>
</html>