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
      <title>查询结果</title>
      <style type="text/css">
        .tablesearch{
          border: 1px solid #ccc;
        }
        .tablesearch td{
          border: 1px solid #ccc;
          width:200px;
        }
        .searchback{
          background: #fff;
          width: 800px;
          height: 150px;
          position: fixed;
          bottom: 10px;
          left: 30%;
        }
        .searchback div,input{
          text-align: center;
          margin-top: 20px;
        }
        .backbot{
                width: 100px;
                height: 45px;
                border: none;
                background: #33cc33;
                margin-top: 20px;
                position: relative;
                left: 350px;
                top: 15px;
                color:#fff;
            }
      </style>
  </head>  
    
<body>
        <h2>查询到以下结果</h2>
        <table class="tablesearch">
              <tr>
                <td align="center">身份证号</td>
                <td align="center">姓名</td>
                <td align="center">性别</td>
                <td align="center">年龄</td>
                <td align="center">电话</td>
              </tr>
            <%
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");
            Statement stmt=conn.createStatement();
            String searchid=request.getParameter("id");
            ResultSet rs=stmt.executeQuery("select * from 客户信息 where 身份证号="+searchid);
            ResultSet rwhy=rs;
            if(rs.next())
            {%>
              
              <tr>
                <td align="center"><%=rs.getString("身份证号") %></td>
                <td align="center"><%=rs.getString("姓名") %></td>
                <td align="center"><%=rs.getString("性别") %></td>
                <td align="center"><%=rs.getString("年龄") %></td>
                <td align="center"><%=rs.getString("电话") %></td>
              </tr>
            
            <%}%>
            
        </table>
        <div class="searchback">
            <div></div>
            <div>按下BACK返回客户信息界面</div>
            <input type="button" value="BACK" class="backbot" onclick="javascript:document.location.href='peoinf.jsp';">    
        </div>
      


</body>     
</html> 