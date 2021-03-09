<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/6
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>文章发表审核系统</title>
  </head>
  <body>
  <%@ page import="enity.news" %>
  <%@ page import="Dao.newsDao" %>
  <%@ page import="java.io.PrintWriter" %>
  <%@ page import="java.sql.Date" %>
  <%@ page import="enity.user" %>
  <%
    request.setCharacterEncoding("utf-8");
    request.setCharacterEncoding("utf-8");
    PrintWriter printWriter = response.getWriter();

    String content = request.getParameter("text_name");

    if(content.length()==0){
      printWriter.write("请不要虚空输出");
    }
    else{
      newsDao database = new newsDao("root","admin");
      user test = new user("author",2,"author","2@qq.com");
      Date createDate = new Date(session.getCreationTime());
      database.add(content,test,createDate);
      %><h1>文章发布成功</h1><br>
    <form method = "post" action="author.jsp">
    <input type="submit" value="再写一篇">
    </form>

    <form method = "post" action="index.jsp">
    <input type="submit" value="看看内容">
    </form>  <%
    }
  %>
  </body>
</html>
