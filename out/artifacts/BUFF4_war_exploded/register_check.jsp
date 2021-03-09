<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>判断注册状态</title>
</head>
<body>
<%@ page import="Dao.userDao" %>
<%
  PrintWriter printWriter = response.getWriter();
  int  x =  request.getParameter("userSteamId").indexOf("@");
  int  y = request.getParameter("userSteamId").length();
  int  a = request.getParameter("userSteamId").indexOf(".");
  int  b = request.getParameter("userSteamId").length();
  if(x==-1||x==0||x==y-1||a==-1||a==0||a==b-1){
    printWriter.write("请输入正确的邮箱格式!");
    printWriter.write("3秒后跳转到注册页面！");
    printWriter.write('\n');
%><meta http-equiv="refresh" content="3; url=register.jsp"><%
  }

%>
<%
  request.setCharacterEncoding("utf-8");
  request.setCharacterEncoding("utf-8");



  String name = request.getParameter("userName");
//  String name = "root";
  String pwd = request.getParameter("userPwd");
  String repwd = request.getParameter("reuserPwd");
  String steamurl = request.getParameter("userSteamId");
if(pwd.equals(repwd)){
  userDao dd = new userDao("root","admin");
  dd.showConnect();

  if(dd.check_name(name)){
    dd.close();
    try {

      userDao database = new userDao("root","admin");
      database.showConnect();
      database.insert(name, pwd, steamurl);
      database.close();
      printWriter.write("恭喜注册成功!");
      printWriter.write("3秒后跳转到登录页面！");
      %><meta http-equiv="refresh" content="3; url=login.jsp"><%
      }

    catch (Exception e) {
    e.printStackTrace();
    printWriter.write("糟糕注册失败！");
    printWriter.write("3秒后跳转到注册页面！");
    %><meta http-equiv="refresh" content="3; url=register.jsp"><%
    }
  }
  else{
  printWriter.write("请给你起个不一样的名字");
  printWriter.write("3秒后跳转到注册页面！");
%><meta http-equiv="refresh" content="3; url=register.jsp"><%
  }

}
  else{
  printWriter.write("两次密码输入错误");
  printWriter.write("3秒后跳转到注册页面！");
%><meta http-equiv="refresh" content="3; url=register.jsp"><%

}
%>


</body>
</html>
