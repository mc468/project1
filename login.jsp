<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%  String path = request.getContextPath(); 
String basePath =  request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User LogIn</title>
<!--  
<link rel="stylesheet" type="text/css" href="styles.css">  
-->
</head>
<style>div#div1{
position:fixed;
top:0;  
left:0;  
bottom:0;  
right:0;  
z-index:-1;  
}   
div#div1 > img {  
height:100%;  
width:100%;  
border:0;  
}
</style>

<body>
<div id = "div1"><img src="Lighthouse.jpg"></div>
<div align = "center">
<TR>
<TD class = big align = right colSpan = 3><B><marquee>welcome to Ming Cheng's Bank!! We are happy for helping you!!
</marquee></B></TD></TR>
<TABLE cellSpacing = 0 cellPadding = 0 align = center border = 0></TABLE>
<br>
<br>
<div align = "center" style = "width:300px;">
<fieldset>
<legend><b>Enter your Online ID</b></legend>
<form action="login_check.jsp" method="post">
<label><b>UserName:</b>
<input type="text" name="userName" id="userName" style="width:180px; height:16px;"/>
</label>
<br />
<label><b>password:</b>
<input type="password" name="userPassword" id="userPassword" style="width:180px; height:16px;"/>
</label>
<br/><br/>
<div align="center">
<input type="submit" name="submit" id="submit" value="Log In" style="width:120px;" />
<input type="reset" name="reset" id="reset" value="Clear" style="width:120px;" />
</div>
<td>
<a href="register.jsp" target"_parent">
<b>New Customer sign up</b><br>
</a>
</td>
</form>
</fieldset>
</div>
</div>
</body>
</html>