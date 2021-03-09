<%@ page import="java.io.PrintWriter" %>
<%@ page import="Dao.newsDao" %>
<%@ page import="enity.news" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/5
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    *{
      margin: 0;
      padding: 0;
    }
    html,body{
      width: 100%;
      height: 100%;
    }
    #box{
      width: 100%;
      height: 100%;
      overflow: hidden;
    }
    #box div{
      float: right;
    }
    .left{
      width: 30%;
      border-right: 1px solid gold;
      height: 980px;
      overflow: auto;
    }
    .left div{
      width: 100%;
      height: 200px;
      text-align: center;
    }
    .right{
      width: 69%;
      height: 980px;
    }
  </style>
  <title>易网PUFF CFGO饰品交易平台（假)</title>
</head>
<body>
<div id="box">
  <div class="left">
    <h4>新闻资讯</h4>

    <div>
      <%request.setCharacterEncoding("utf-8");
        PrintWriter printWriter = response.getWriter();


        newsDao database = new newsDao("root","admin");

        news newss  = new news();
        newss= database.get(1);
        String b;
        if(newss.getContent()!=null){
      %><a href="showNewsDetails.jsp">查看文章详细内容</a><br><%
        String a = newss.getContent();
        if(a.length()>100){
          b=a.substring(0,100)+"...";
        }
        else{
          b=a;
        }
      }
      else{
        b="";
      }
    %>
      <%=b%><br>
      <% Date d = newss.getCreateDate();%>
      <%=d%>
    </div>
    <div>
      <%request.setCharacterEncoding("utf-8");
        PrintWriter printWriter1 = response.getWriter();
        newsDao database1 = new newsDao("root","admin");
        news newss1  = new news();
        newss= database.get(2);
        String b1 = "";
        if(newss.getContent()!=null){
      %><a href="showNewsDetails.jsp">查看文章详细内容</a><br><%
        String a = newss.getContent();
        if(a.length()>100){
          b1=a.substring(0,100)+"...";
        }
        else{
          b1=a;
        }
      }
    %>
      <%=b1%><br>
      <% Date d1 = newss.getCreateDate();%>
      <%=d1%>
    </div>
    <div>
      <%request.setCharacterEncoding("utf-8");
        PrintWriter printWriter2 = response.getWriter();
        newsDao database2 = new newsDao("root","admin");
        news newss2  = new news();
        newss= database.get(3);
        String b2 = "";
        if(newss.getContent()!=null){
      %><a href="showNewsDetails.jsp">查看文章详细内容</a><br><%
        String a = newss.getContent();
        if(a.length()>100){
          b2=a.substring(0,100)+"...";
        }
        else{
          b2=a;
        }
      }
    %>
      <%=b2%><br>
      <% Date d2 = newss.getCreateDate();%>
      <%=d2%>
    </div>
    <div>
      <%request.setCharacterEncoding("utf-8");
        PrintWriter printWriter3 = response.getWriter();
        newsDao database3 = new newsDao("root","admin");
        news newss3  = new news();
        newss= database.get(4);
        String b3 = "";
        if(newss.getContent()!=null){
      %><a href="showNewsDetails.jsp">查看文章详细内容</a><br><%
        String a = newss.getContent();
        if(a.length()>100){
          b3=a.substring(0,100)+"...";
        }
        else{
          b3=a;
        }
      }
    %>
      <%=b3%><br>
      <% Date d3 = newss.getCreateDate();%>
      <%=d3%>
    </div>

    <div>5</div>
    <div>6</div>
    <div>7</div>
    <div>8</div>
    <div>9</div>
    <div>10</div>
    <div>11</div>
  </div>
  <div class="right">
    <h1> 易网PUFF CFGO饰品交易平台（假）</h1>
    <div class="head">
      <a href="login.jsp">登录</a>
      <a href="register.jsp">注册</a>
    </div>
    <img src ="img/index1.jpg" style="width:1060px;height:598px;"/>

  </div>
</div>

</body>
</html>
