<%@ page import="java.io.PrintWriter" %>
<%@ page import="Dao.userDao" %>
<%@ page import="enity.user" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/7
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>判定删除用户</title>
  </head>
  <body>
  <%
    request.setCharacterEncoding("utf-8");

    userDao database = new userDao("root","admin");
    database.showConnect();

    int id = Integer.parseInt(request.getParameter("id"));
     database.delete(id);

    database.close();


  %>
  <h2>删除成功</h2>
  <a href = root.jsp>返回上一步</a>
  </body>
</html>
