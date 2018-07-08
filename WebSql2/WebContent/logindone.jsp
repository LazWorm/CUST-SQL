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
      <title>登陆状态</title>
 
            
  </head>  
    
<body>
        
        <%
            String reqid=request.getParameter("id");
            String reqpw=request.getParameter("pw"); 
            String rigid="sml";
            String rigpw="123456";
            if((reqid.equals(rigid))&&(reqpw.equals(rigpw)))
            {%>
            <div class="success">
                <h2>登陆成功</h2>
                <div class="inf">登录信息正确</div>
                <input class="bot"  type="button" value="进入系统" onclick="javascript:document.location.href='guzhang.jsp';">
            </div>
                        
        <%}%>
        
        <%
            if(!(reqid.equals(rigid))||!(reqpw.equals(rigpw)))
            {%>
            <div class="fail">
                <h2>登陆失败</h2>
                <div class="inf nosuccess">登录信息错误</div>
                <input class="bot" type="button" value="重新输入" onclick="javascript:document.location.href='login.jsp';">
            </div>
                        
        <%}%>
</body>     
</html> 