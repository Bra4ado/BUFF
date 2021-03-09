<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/13
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>sell1</title>
  </head>
  <body>

  <form method = "post" action="add_PropertyValue.jsp">
    <% String gk_name=(String)session.getAttribute("str");%>
    <h2>尊贵的<%=gk_name%>请填写饰品详细信息</h2>
    <td align="right" class="left">选择名称：</td>
    <td align="left">

      <select id="type" name="userImgPath">
        <option value="">--------选择分类-----</option>
        <option value="1" <c:if test="${pBanner.type == 1}">M9刺刀（原版）</c:if> </option>
        <option value="2" <c:if test="${pBanner.type == 2}">蝴蝶刀</c:if> </option>
      </select>
    </td><br>

    输入饰品模板：<input type="text" name = "skinId" required placeholder="请输入饰品模板"/><br>
    输入饰品磨损：<input type="text" name = "skinAbrase" required placeholder="请输入饰品磨损"/><br>
    输入饰品价格：<input type="text" name = "Value" required placeholder="请输入饰品价格"/><br>

    <input type="submit" value="确认提交"><input type="reset" value="重新输入">
  </form>
  </body>
</html>
