<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统登录</title>
</head>
<body>
     <div align="center">
         <form action="validate.jsp" mathod="post">
         系统登录<br><br>
         <table>
            <tr>
            <td align="right">用户名：</td>
            <td><input type="text" name="username"></td>
            </tr>
            
            <tr>
            <td align="right">密码：</td>
            <td><input type="password" name="password"></td>
            </tr>
         </table>
           <br>
           <input type="submit" value="登录">
         </form>
     </div>
</body>
</html>