<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录验证</title>
</head>
<body>
	<%
		String username0 = request.getParameter("username"); //获取提交的姓名
		String password0 = request.getParameter(" password"); //获取提交的姓名
         boolean validated= false;
         Connection conn=null;
 		Statement stmt=null;
 		ResultSet rs=null;
		try{
			
		//1.注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//2.获取连接对象
		String url = "jdbc:mysql://127.0.0.1:3306/mydb";
		String user = "root";
		String password = "123456";
		 conn = DriverManager.getConnection(url, user, password);
		//3.获取操作对象
		 stmt=conn.createStatement();
		//4.查询语句
		String sql="select *from login";
		//5.获取结果集
		 rs =stmt.executeQuery(sql);
		//6.处理结果集
		 while(rs.next()){
			/*  if((rs.getString("name").equals(username0))&&
					(rs.getString("password").equals(password0))){
				validated= true;
			} */
			/* if(rs.getString("name").equals(username0)){
				validated= true;
			} */
			String pwd = rs.getString("password");
			System.out.println(pwd+"  ");
			
		}
	
		if(rs.getString("password").equals(password0)){
			validated= true;
		}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			}
			if(stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			}
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			}
		}
		if(validated)//验证成功跳转成功页面
		{
	%>
	  <jsp:forward page="welcome.jsp"></jsp:forward>
	  <%
		}
		else{  //验证成功跳转失败页面
			
	  %>
	  <jsp:forward page="error.jsp"></jsp:forward>
	  <%
		}
	  %>
</body>
</html>