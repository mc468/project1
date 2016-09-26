<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%  
String path = request.getContextPath(); 
String basePath =  request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User register</title>
</head>
<style>div#div1{
position:fixed;
top:0;
left:0;
bottom:0;
right:0;
z-index:-1;
}
div#div1 > img{
height:100%;
width:100%;
border:0;
}
</style>
<body>
<div id="div1"><img src="Desert.jpg" /></div>   
<div align="center">    
<br><br><br><br><br><br><br>
<div align="center" style="width:300px;">
<fieldset>
<legend><b>User Register</b></legend>
 <form action="register_check.jsp" method="post">
 <label><b>Username:</b>
 <input type="text" name="userName" id="userName" style="width:180px; height:16px;" />
 </label>
 <br />
 <label><b>Password: </b>
 <input type="password" name="userPassword" id="userPassword" style="width:180px; height:16px;" />
 </label>
 <br />
 <label><b>Re-Enter Password:</b>
 <input type="password" name="confirmedUserPassword" id="confirmedUserPassword" style="width:180px; height:16px;" />
 </label>
 <br /><br />
 <div align="center">
 <input type="submit" name="submit" id="submit" value="Register" style="width:120px;" />
 <input type="reset" name="reset" id="reset" value="Clear" style="width:120px;" />
 </div>
 <td>
 <a href="login.jsp" target="_parent">
 <b>back to Log In page</b><br>
 </a>
 </td>
 </form>
 </fieldset>
 </div>   
 </div>
</body>
</html>