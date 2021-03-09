<%@ page import="Dao.newsDao" %>
<%@ page import="enity.user" %>
<%@ page import="java.util.Date" %>
<%@ page import="enity.news" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>资讯发布系统</title>
    </head>
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
    <body>
    <div id="box">
      <div class="left">
        <h4>过往资讯</h4>

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
            else {
            b = "";
          }
           int c =  newss.getId();
          %>
          <%=c%><br>
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

          int c1 =  newss.getId();
          %>
          <%=c1%><br>
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

          int c2 =  newss.getId();
          %>
          <%=c2%><br>
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
          int c3 =  newss.getId();
        %>
          <%=c3%><br>
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
        <h1> 倚马可待，妙笔生花 </h1>
        <form method = "post" action="author_check.jsp">

          <textarea type="text" id="text" name="text_name" style="height:600px;width: 1000px;">

          </textarea><br>
          <input type="submit" value="发布文章"><input type="reset" value="重新编辑"></form>
        <div>


          <form method = "post" action="author_delete.jsp">
            <h3>选择你要删除的文章</h3>

            编码:<input type="text" name = "delete_id" required placeholder="请输入文章上方标注的数字"/><br>
            <input type="submit" value="确认删除">
        </div>
      </div>

    </div>
  </div>
  </body>
</html>

</div>

  </body>
</html>
