<%@ page import="Dao.PropertyValueDAO" %>
<%@ page import="enity.PropertyValue" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/1
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>修改价格</title>
</head>
<body>
<form method = "post" action="check_changevalue.jsp">
  <h2>修改页面</h2>

  <%
    int buy_id=Integer.parseInt(request.getParameter("buy_id"));;
    session.setAttribute("skin_id",new String(String.valueOf(buy_id)));
  %>
  输入磨损：<input type="text" name = "skinAbrase" required placeholder="请输入磨损"/><br>
  输入金额：<input type="text" name = "Value" required id="userPwd" placeholder="请输入金额"><br>
  输入模板：<input type="text" name = "skinId" required id="reuserPwd" placeholder="请输入模板"><br>
  <input type="submit" value="提交修改"><input type="reset" value="重新输入">
</form>
</body>
</html>
