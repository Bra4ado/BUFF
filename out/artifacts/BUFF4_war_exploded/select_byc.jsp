<%@ page import="Dao.PropertyValueDAO" %>
<%@ page import="enity.PropertyValue" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.CategoryDao" %>
<%@ page import="Dao.PropertyDAO" %>
<%@ page import="enity.Property" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>分类查询</title>
  </head>
  <body>
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
        int cid = Integer.parseInt(request.getParameter("userImgPath"));;
        PropertyDAO propertyDAO =new PropertyDAO();
        List<Property> propertyList=propertyDAO.list(cid);
        for (Property each1:propertyList){
        List<PropertyValue> userList = database1.list_byProperty(each1.getId());
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
          <a href = "Javascript:if(confirm('确认购买？')) location='sure_buy.jsp?buy_id=<%=each.getId()%>'">购买</a>
        </td>
      </tr>
      <%}
      %>
      <%}
      %>
      </tbody>
    </table>
  </div>
  </body>
</html>
