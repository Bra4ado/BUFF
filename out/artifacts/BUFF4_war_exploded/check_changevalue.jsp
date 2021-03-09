<%@ page import="Dao.PropertyValueDAO" %>
<%@ page import="enity.PropertyValue" %>
<%@ page import="Dao.PropertyDAO" %>
<%@ page import="enity.Property" %>
<%@ page import="Dao.userDao" %>
<%@ page import="enity.user" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>修改价格</title>
</head>
<body>
<%


  float skinabrase = Float.parseFloat(request.getParameter("skinAbrase"));
  int value =Integer.parseInt(request.getParameter("Value"));
  int skinid=Integer.parseInt(request.getParameter("skinId"));

  int x = Integer.parseInt((String) session.getAttribute("skin_id"));


  PropertyValueDAO propertyValueDAO =new PropertyValueDAO();
  PropertyValue propertyValue =new PropertyValue();
  Property property =propertyValueDAO.get(x).getProperty();

  userDao userDao = new userDao("root","admin");
  user user =userDao.getUser((String)session.getAttribute("str"));

  propertyValue.setProperty(property);
  propertyValue.setUser(user);
  propertyValue.setskinAbrase(skinabrase);
  propertyValue.setskinId(skinid);
  propertyValue.setValue(value);
  propertyValue.setId(x);

  propertyValueDAO.update(propertyValue);
%>

<h1>皮肤修改成功</h1><br>
<form method = "post" action="mysell.jsp">
  <input type="submit" value="回去看看">
</form>

<form method = "post" action="index_hd.jsp">
  <input type="submit" value="回到主页">
</form>
</body>
</html>
