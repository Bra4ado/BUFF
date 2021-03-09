<%@ page import="Dao.PropertyValueDAO" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>确认下架界面</title>
</head>
<body>
<%
  PropertyValueDAO database = new PropertyValueDAO();
  int x =Integer.parseInt(request.getParameter("buy_id"));
  database.delete(x);

%>
<h1>皮肤以下架</h1>
<form method = "post" action="mysell.jsp">
  <input type="submit" value="我的出售">
</form>

<form method = "post" action="index.jsp">
  <input type="submit" value="返回主页">
</form>
</body>
</html>
