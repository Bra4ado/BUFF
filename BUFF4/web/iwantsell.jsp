<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>上架界面</title>
  </head>
  <body>
  <form method = "post" action="sure_sell.jsp">
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
  </body>
</html>
