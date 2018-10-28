<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录界面</title>
<style type="text/css">
.code 
{
 background:url(images/155.jpg);
 font-family:Arial;  /*指定一个元素的字体*/
 font-style:italic;  /*指定文本的字体样式:斜体*/
 color:blue;
 font-size:30px;
 border:0;
 padding:2px 3px;  /*定义元素边框与元素内容之间的空间，即上下2px左右3px的内边距*/
 letter-spacing:3px; /*字符间距*/
 font-weight:bolder;  /*设置文本的粗细*/
 float:left;  /*左浮动*/
 cursor:pointer;  /*定义了鼠标指针放在一个元素边界范围内时所用的光标形状:一个小手*/
 width:150px;
 height:60px;
 line-height:60px;  /*行高*/
 text-align:center;  /*指定元素文本的水平对齐方式*/
 vertical-align:middle; 
}
a 
{
 text-decoration:none;
 font-size:12px;
 color:#288bc4;
}
a:hover 
{
 text-decoration:underline;
}
</style>
</head>
<body onload="createCode()">
   欢迎注册<br>
       <form name="loginForm" id="form1"  onsubmit="validate()">
        输入账号：<input type="text" name="account"><br>
        输入密码：<input type="password" name="password"><br>
        
        
 <div>
  <table border="0" cellspacing="5" cellpadding="5" >
   <tr>
    <td></td>
    <td><div class="code" id="checkCode" onclick="createCode()" ></div></td>
    <td><a href="#" onclick="createCode()">看不清换一张</a></td>
   </tr>
   <tr>
    <td>验证码：</td>
    <td><input style="float:left;" type="text"  id="inputCode" /></td>
    <td>请输入验证码</td>
   </tr>
  
  </table>
 </div>
 
 
      <input type="button" onclick="validate()" value="登录">
      <input type="reset" value="清空">
      <input type="button" value="注册">
       </form>
   <script type="text/javascript">
   var code;
   function validate(){
		//得到两个文本框的内容
		account=document.loginForm.account.value;
		password=document.loginForm.password.value;
		var inputCode=document.getElementById("inputCode").value;
		var qqPattern = /^[1-9][0-9]{4,10}$/;
		
		var code1= /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])$/;//最少6位，包括至少1个大写字母，1个小写字母，1个数字
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
		else if(code1.test(password)){
			alert("密码不符合规则，请重新输入：");
			document.loginForm.password.focus(); //聚焦
			return;
		}
		else if(inputCode.length <= 0) 
		 {
			  alert("请输入验证码！");
		}
		else if(inputCode.toUpperCase() != code.toUpperCase()) 
		 {
		   alert("验证码输入有误！");
		   createCode();
		 }
		else{
			alert("登录成功");
			
		}
		document.loginForm.submit();
	}
   /*---------------------------------------------------------*/
   function createCode() 
{
 code = "";
 var codeLength = 6; //验证码的长度
 var checkCode = document.getElementById("checkCode");//返回对拥有指定 ID 的第一个对象的引用
 var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
      'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
 for(var i = 0; i < codeLength; i++) 
 {
  var charNum = Math.floor(Math.random() * 52); //floor向下取整
  code += codeChars[charNum];
 }
 if(checkCode) 
 {
  checkCode.className = "code";
  checkCode.innerHTML = code;
 }
}
   /*
function validateCode() 
{
 var inputCode=document.getElementById("inputCode").value;
 if(inputCode.length <= 0) 
 {
  alert("请输入验证码！");
 }
 else if(inputCode.toUpperCase() != code.toUpperCase()) 
 {
   alert("验证码输入有误！");
   createCode();
 }
 else 
 {
  alert("验证码正确！");
 }    
}  
  */ 
   </script>
</body>
</html>