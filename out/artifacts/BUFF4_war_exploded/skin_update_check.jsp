<%@ page import="Dao.PropertyDAO" %>
<%@ page import="Dao.CategoryDao" %>
<%@ page import="enity.Property" %>
<%@ page import="enity.Category" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/8
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <%@ page   pageEncoding="utf-8"%>

  <%request.setCharacterEncoding("utf-8");%>

  <title>皮肤修改界面</title>
</head>
<body>
<%

  PropertyDAO database = new PropertyDAO();
  CategoryDao database1 = new CategoryDao("root","admin");

  int id=(Integer)session.getAttribute("id");

  int cid = Integer.parseInt(request.getParameter("cid"));


  request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");

  String name =  request.getParameter("name");


  Property property = new Property();
  Category category = database1.get(cid);

  property.setName(name);
  property.setCategory(category);
  property.setId(id);

  database.update(property);

  String name2 =database.get(id).getName();

%>

<h1>改后的名字叫</h1><br>
<h1><%=name2%></h1><br>

<form method = "post" action="root.jsp">
  <input type="submit" value="返回">
</form>
</body>
</html>
