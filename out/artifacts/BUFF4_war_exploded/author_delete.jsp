<%@ page import="Dao.newsDao" %>
<%@ page import="enity.user" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/6
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>文章删除系统</title>
  </head>
  <body>
    <%
      newsDao database = new newsDao("root","admin");
      int x =Integer.parseInt(request.getParameter("delete_id"));
      database.delete(x);
    %>
    <h1>文章已删除</h1>
    <form method = "post" action="author.jsp">
      <input type="submit" value="回去看看">
    </form>

    <form method = "post" action="index.jsp">
      <input type="submit" value="看看主页">
    </form>
  </body>
</html>
