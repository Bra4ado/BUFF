<%@ page import="Dao.PropertyDAO" %>
<%@ page import="Dao.CategoryDao" %>
<%@ page import="enity.Property" %>
<%@ page import="enity.Category" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/8
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>皮肤修改界面</title>
</head>
<body>
<form method = "post" action="skin_update_check.jsp">
  <h2>修改皮肤界面</h2>

  名字：<input type="text" name = "name" required placeholder="请输入修改后皮肤名字"/><br>

  <td align="right" class="left">确认分类：</td>
  <td align="left">

    <select id="type" name="cid">

      <option value="">--------选择分类-----</option>
      <option value="1" <c:if test="${pBanner.type == 1}">刀</c:if> </option>
      <option value="2" <c:if test="${pBanner.type == 2}">手套</c:if> </option>
      <option value="3" <c:if test="${pBanner.type == 3}">AWP</c:if> </option>
      <option value="4" <c:if test="${pBanner.type == 4}">AK</c:if> </option>
      <option value="5" <c:if test="${pBanner.type == 5}">M4</c:if> </option>

    </select>
  </td><br>

  <%  int id = Integer.parseInt(request.getParameter("id"));
    session.setAttribute("id",id);
  %>

  <input type="submit" value="确认修改"> <input type="reset" value="重新输入"></form>
</form>
</body>
</html>
