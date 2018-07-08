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
        <title>汽车信息</title>
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
          <h2>汽车基本信息</h2>
        </div>
      <form action="zengjiaqichedone.jsp" accept-charset="UTF-8">
          <table  border="1" cellspacing="0">
              <tr>
                  <td><input class="subinf" type="text" name="id1"></td>
                  <td><input class="subinf" type="text" name="id2"></td>
                  <td><input class="subinf" type="text" name="id3"></td>
				  <td><input class="subinf" type="text" name="id4"></td>	
              </tr>
          </table>
          <input class="subbot" type="submit" class="subbot" value="提交">
      </form>

    </body>
</html>