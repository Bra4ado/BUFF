<%@ page import="Dao.PropertyDAO" %>
<%@ page import="enity.Property" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.PropertyValueDAO" %>
<%@ page import="enity.PropertyValue" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
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
            List<PropertyValue> userList = database1.getAllSkin();
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
          </tbody>
        </table>
      </div>
    </div>

    <div class="lay2" style="width:50%;float:right;">

      <form method = "post" action="select_byc.jsp">

        <h2>分类查询</h2>

        <td align="right" class="left">选择分类：</td>
        <td align="left">

          <select id="type" name="userImgPath">
            <option value="">--------选择分类-----</option>

            <option value="1" <c:if test="${pBanner.type == 1}">刀</c:if> </option>
            <option value="2" <c:if test="${pBanner.type == 2}">手套</c:if> </option>
            <option value="3" <c:if test="${pBanner.type == 3}">AWP</c:if> </option>
            <option value="4" <c:if test="${pBanner.type == 4}">AK</c:if> </option>
            <option value="5" <c:if test="${pBanner.type == 5}">M4</c:if> </option>

          </select>
        </td><br>


        <input type="submit" value="确认提交">
      </form>

    </div>

  </body>
</html>
