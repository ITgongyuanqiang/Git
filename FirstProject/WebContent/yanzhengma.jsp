<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>验证码</title>
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
<script type="text/javascript">
var code;
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
</script>
</head>
<body onload="createCode()">  <!-- onload 事件会在页面或图像加载完成后立即发生。 -->
<form id="form1"  onsubmit="validateCode()">  <!-- onsubmit当表单提交时执行 JavaScript: -->
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
   <tr>
    <td></td>
    <td><input id="Button1" onclick="validateCode();" type="button" value="确定" /></td>
    <td></td>
   </tr>
  </table>
 </div>
</form>
</body>
</html>
