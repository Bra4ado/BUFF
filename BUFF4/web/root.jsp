<%@ page import="java.util.List" %>
<%@ page import="Dao.userDao" %>
<%@ page import="enity.user" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Dao.PropertyDAO" %>
<%@ page import="enity.Property" %><%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/7
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .lay1{ width:750px; height:75%; border:1px solid #ff6666;}
    .lay2{ width:750px; height:25%; border:1px solid #bb0646;}
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="main" style="width:100%;">

    <div id="left" style="width:50%;float:left;">

        <div class="main-content-right">
            <div class = main-text-box">
                <table class="admin-list" border ="0">
                    <thead>
                    <tr class="admin-list-head">
                        <th><h2>用户信息浏览</h2></th>
                        <th><h2>操作</h2></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th >id</th>
                        <th >名字</th>
                        <th >密码</th>
                        <th >邮箱</th>
                    </tr>
                    <%
                        userDao database = new userDao("root","admin");

                        request.setCharacterEncoding("utf8");

                        ArrayList<user> userList1 = database.getAllUser();

                        for(user each:userList1){

                    %>


                    <td><%=each.getuserId()%></td>
                    <td><%=each.getUserName()%></td>
                    <td><%=each.getuserPwd()%></td>
                    <td><%=each.getuserSteamId()%></td>

                        <td>
                            <a href = "Javascript:if(confirm('确认删除此用户？')) location='userDel.jsp?id=<%=each.getuserId()%>'">删除</a>
                            <a href = "Javascript:if(confirm('确认限制交易？')) location='userlimit.jsp?id=<%=each.getuserId()%>'">限制交易</a>
                        </td>
                    </tr>
                    <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div id="right" style="width:50%;float:left;">

        <div class="lay1">
            <div class = main-text-box">
                <table class="admin-list" border ="0">
                    <thead>
                    <tr class="admin-list-head">
                        <th style="padding-left:200px"><h2 >饰品信息浏览</h2></th>
                        <th style="padding-left:200px"><h2 >操作</h2></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th style="padding-right:350px">id</th>
                        <th >名字</th>
                        <th >分类</th>
                    </tr>
                    <%
                        PropertyDAO database1 = new PropertyDAO();
                        List<Property> userList = database1.getAllSkin();
                        for (Property each : userList) {
                    %>

                    <tr>

                        <td >
                            <%=each.getId()%>
                        </td>

                        <td >
                            <%=each.getName()%>
                        </td>

                        <td>
                            <%=each.getCategory().getName()%>
                        </td>


                        <td>
                            <a href = "Javascript:if(confirm('确认删除此用户？')) location='skin_delete.jsp?id=<%=each.getId()%>'">删除</a>
                            <a href = "Javascript:if(confirm('确认限制交易？')) location='skin_update.jsp?id=<%=each.getId()%>'">修改</a>
                        </td>
                    </tr>
                    <%}
                    %>
                    </tbody>
                </table>
            </div>

        </div>
        <div class="lay2">

                <form method = "post" action="add_skin.jsp">

                    <h2>增加皮肤</h2>
                    输入名字：<input type="text" name = "userName" required placeholder="请输入用户名"/><br>

                    <td align="right" class="left">确认分类：</td>
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

                <input type="submit" value="确认提交"><input type="reset" value="重新输入">
                </form>

            </div>


    </div>

</div>
</body>
</html>
