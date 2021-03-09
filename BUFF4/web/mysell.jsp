<%@ page import="Dao.PropertyValueDAO" %>
<%@ page import="enity.PropertyValue" %>
<%@ page import="java.util.List" %>
<%@ page import="enity.user" %>
<%@ page import="Dao.userDao" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>我的上架物品</title>
  </head>
  <body>

  <div class="lay1" style="width:50%;float:left;">
    <div class = main-text-box">
      <table class="admin-list" border ="0">
        <tbody>
        <tr>

          <th >id</th>
          <th >图案模板</th>
          <th >皮肤磨损</th>
          <th >皮肤价格</th>
          <th >皮肤名称</th>
          <th >皮肤分类</th>
          <th >卖家名称</th>

        </tr>
        <%
          PropertyValueDAO database1 = new PropertyValueDAO();

          String name = (String)session.getAttribute("str");
          userDao database2 = new userDao("root","admin");
          int uid=database2.getUser(name).getuserId();
          List<PropertyValue> userList = database1.list_byUser(uid);
          for (PropertyValue each : userList) {
        %>

        <tr>

          <td >
            <%=each.getId()%>
          </td>

          <td >
            <%=each.getskinid()%>
          </td>

          <td>
            <%=each.getskinAbrase()%>
          </td>

          <td>
            <%=each.getValue()%>
          </td>

          <td>
            <%=each.getProperty().getName()%>
          </td>

          <td>
            <%=each.getProperty().getCategory().getName()%>
          </td>

          <td>
            <%=each.getUser().getUserName()%>
          </td>

          <td>
            <a href = "Javascript:if(confirm('确认改价？')) location='change_value.jsp?buy_id=<%=each.getId()%>'">改价</a>
          </td>
          <td>
            <a href = "Javascript:if(confirm('确认下架？')) location='sure_delete.jsp?buy_id=<%=each.getId()%>'">下架</a>
          </td>
        </tr>
        <%}
        %>
        </tbody>
      </table>
    </div>

  </div>

  </body>
</html>
