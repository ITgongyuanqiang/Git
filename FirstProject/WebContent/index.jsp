<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
       欢迎注册<br>
       <form name="loginForm">
           输入账号（文本框）：<input type="text" name="account"><br>
           输入密码：（密码框）：<input type="password" name="password"><br>
           选择性别（单选按钮）：
          <input name="sex" type="radio" value="" />男
          <input name="sex" type="radio" value="" />女<br>
           
          
      选择爱好（复选框）：
      <input type="checkbox" >唱歌
      <input type="checkbox" >跳舞
      <input type="checkbox" checked>足球<br>
      填写个人信息：<br>
      <textarea rows="5" cols="20"></textarea><br>
      选择家乡（下拉菜单）：
      <select>
         <option>上海</option>
         <option selected>北京</option>
         <option>天津</option>
      </select><br>
      选择家乡（下拉菜单 ，可以多选）：<br>
       <select size='5' multiple>
         <option>上海</option>
         <option selected>北京</option>
         <option>天津</option>
         <option>杭州</option>
         <option>大连</option>
      </select><br>
      <input type="button" onclick="validate()" value="登录">
      <input type="reset" value="清空">
      <input type="button" value="普通按钮">
           
       </form>
	<script type="text/javascript">
		function locationTest() {
			window.location.href = "images/155.jpg";
		}
		function validate(){
			//得到两个文本框的内容
			account=document.loginForm.account.value;
			password=document.loginForm.password.value;
			var qqPattern = /^[1-9][0-9]{4,10}$/;
			
			var code= /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])$/;//最少6位，包括至少1个大写字母，1个小写字母，1个数字
			if(account==""){
				alert("账号不能为空");
				document.loginForm.account.focus(); //聚焦
				return;
			}
			else if(qqPattern.test(account)==false){
				alert("账号不符合规则，请重新输入：");
				document.loginForm.account.focus(); //聚焦
				return;
				
			}
			else if(password==""){
				alert("密码不能为空");
				document.loginForm.password.focus(); //聚焦
				return;
			}
			else if(code.test(password)){
				alert("密码不符合规则，请重新输入：");
				document.loginForm.password.focus(); //聚焦
				return;
			}else{
				alert("登录成功");
			}
			
				
			document.loginForm.submit();
		} 
		
	</script>
	<input type="button" onclick="locationTest() " value="按钮">
	<a href="images/4.jpg">到图片</a>
</body>
</html>