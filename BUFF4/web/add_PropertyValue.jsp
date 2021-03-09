<%@ page import="jdk.nashorn.internal.objects.AccessorPropertyDescriptor" %>
<%@ page import="Dao.userDao" %>
<%@ page import="enity.user" %>
<%@ page import="enity.PropertyValue" %>
<%@ page import="Dao.PropertyValueDAO" %>
<%@ page import="Dao.PropertyDAO" %>
<%@ page import="enity.Property" %>
<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <%
    request.setCharacterEncoding("utf-8");

    String gk_name=(String)session.getAttribute("str");

    String name = request.getParameter("userName");
    int cid =Integer.parseInt(request.getParameter("userImgPath"));

    userDao database = new userDao("root","admin");
    int uid = database.getUser(gk_name).getuserId();

    int skinid =Integer.parseInt(request.getParameter("skinId"));

    float skinabrase = Float.parseFloat(request.getParameter("skinAbrase"));

    int value =Integer.parseInt(request.getParameter("Value"));

     PropertyValue propertyValue =new PropertyValue();
     PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

     PropertyDAO propertyDAO =new PropertyDAO();
     Property property =propertyDAO.get(cid);

     userDao userDao = new userDao("root","admin");
     user user =userDao.getUserById(uid);

     propertyValue.setProperty(property);
     propertyValue.setUser(user);

     propertyValue.setskinAbrase( skinabrase);
     propertyValue.setskinId(skinid);
     propertyValue.setValue(value);
     propertyValueDAO.add(propertyValue);

  %><h1>皮肤增加成功</h1><br>
  <form method = "post" action="mysell.jsp">
    <input type="submit" value="回去看看">
  </form>

  <form method = "post" action="iwantsell.jsp">
    <input type="submit" value="继续上架">
  </form>
  </body>
</html>
