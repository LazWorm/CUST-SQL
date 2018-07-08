<%-- 
    Document   : index
    Created on : 2010-8-16, 1:45:07
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>维修信息</title>
    </head>
    <style type="text/css">
            table{
                border:1px solid #666;

            }
            td{

                border: 1px solid #666;
            }
        </style>
    <body>
       
        
       
        <div>
          <h2>维修基本信息</h2>
        </div>
        <table>
          <tr>
            <td>员工工号</td>
            <td>维修单号</td>
            <td>维修车牌</td>
          
          </tr>
        <%
        //jsp代码是用<%的一堆符号括起来的
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");//调用驱动链接数据库
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=car","yhblsqt","19980322");
        Statement stmt=conn.createStatement();//上一行的后面部分是数据库名test，用户名yhblsqt，密码19980322
        ResultSet rs=stmt.executeQuery("select * from 维修");//向数据库端发送sql语句，用rs来接收返回结果
        while(rs.next())
        {%>
          <tr>
            <td><%=rs.getString("员工工号") %></td>
            <td><%=rs.getString("维修单号") %></td>
            <td><%=rs.getString("维修车牌") %></td>
           
            <td><a href="#" class="deletebot">删除当前信息</a></td>
          </tr>
        <%}%>
          <tr>
            <td colspan="7"><a href="#">键入新信息</a></td>
          </tr>
     </table>
     <a href="guzhang.jsp">go</a>
    </body>
</html>