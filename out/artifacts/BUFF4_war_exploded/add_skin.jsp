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
    <title>判定增加皮肤</title>
  </head>
  <body>
  <%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("userName");
    int cid =Integer.parseInt(request.getParameter("userImgPath"));

    Property property = new Property();
    CategoryDao database1 = new CategoryDao("root","admin");

    Category category = database1.get(cid);
    property.setCategory(category);
    property.setName(name);

    PropertyDAO database2 = new PropertyDAO();
    database2.add(property);

  %><h1>皮肤增加成功</h1><br>
  <form method = "post" action="root.jsp">
    <input type="submit" value="返回">
  </form>


  </body>
</html>
