<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean class="ob.User" id="User" scope="page" />
<%  
String path = request.getContextPath(); 
String basePath =  request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authentic User Register</title>
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
<% 
String userName = request.getParameter("userName");     
User.setUserName(userName);      
String userPassword = request.getParameter("userPassword");     
User.setUserPassword(userPassword);
String confirmedUserPassword = request.getParameter("confirmedUserPassword");
if (!User.isExist()) {  
	if(userPassword.equals(confirmedUserPassword)) {
		User.addUser();   
%>
<h2 align="center"> Congratulation!</h2>
<td>
<a href="login.jsp" target="_parent">
back to Log In page<br>
</a>
</td>
<%
}else {
%>
<h2 align="center">The password not same</h2>
<td>
 <a href="register.jsp" target="_parent">
 back to register page<br>
 </a>
 </td>
 <% 
	}	
}else {
%>
<h2 align="center"> Username not Available</h2>
<td>
<a href="register.jsp" target="_parent">
back to register page<br>
</a>
</td>
<% 
} 
%> 
<div id="div1"><img src="Desert.jpg" /></div>
</body>
</html>