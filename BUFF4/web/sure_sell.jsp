<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>选择上架种类</title>
  </head>
  <body>
  <%
     if(Integer.parseInt(request.getParameter("userImgPath"))==1)
     {
        %><meta http-equiv="refresh" content="1; url=sell1.jsp"><%
     }
    if(Integer.parseInt(request.getParameter("userImgPath"))==2)
    {
  %><meta http-equiv="refresh" content="1; url=sell2.jsp"><%
    }
    if(Integer.parseInt(request.getParameter("userImgPath"))==3)
    {
  %><meta http-equiv="refresh" content="1; url=sell3.jsp"><%
    }
    if(Integer.parseInt(request.getParameter("userImgPath"))==4)
    {
  %><meta http-equiv="refresh" content="1; url=sell4.jsp"><%
    }
    if(Integer.parseInt(request.getParameter("userImgPath"))==5)
    {
  %><meta http-equiv="refresh" content="1; url=sell5.jsp"><%
    }
  %>

  </body>
</html>
