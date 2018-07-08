<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="javax.sql.*" %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <title>登陆汽车故障管理系统</title>

        
  </head>  
    
<body>
  <div class="back">
    <form action="logindone.jsp">
      <div class="log">
        <div class="login">
          <h3>登陆</h3>
          <input type="text" name="id">
          <input type="password" name="pw">
          <input type="submit" class="subbot" value="提交">
        </div>
      </div>
    </form>
  </div>
  
</body>     
</html> 