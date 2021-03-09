<%@ page import="java.io.PrintWriter" %>
<%@ page import="Dao.PropertyDAO" %>
<%@ page import="enity.Property" %>
<%@ page import="Dao.CategoryDao" %>
<%@ page import="enity.Category" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/8
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>判定删除皮肤</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");

  PropertyDAO database = new PropertyDAO();

  int id = Integer.parseInt(request.getParameter("id"));

  database.delete(id);


%><h1>皮肤删除成功</h1><br>
<form method = "post" action="root.jsp">
  <input type="submit" value="返回">
</form>


</body>
</html>
