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
<base href="<%=basePath%>"> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login_check</title>
<meta http-equiv="pragma" content="no-cache">   
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">       
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">
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
if (User.userValid()) {  
	session.setAttribute("userName", userName);          
	session.setAttribute("userID", User.getUserID() + "");   
%>
<h2 align="center"> Success!</h2>
 <center>                  
 <input type="button" name="goback" value="back" onClick="javascript:window.history.go(-1)" >             
 </center>
 <% 
 response.sendRedirect("homepage.jsp");     
 } else { 
 %>
 <h2 align="center"> There is Error!</h2>         
 <center>              
 <input type="button" name="goback" value="back" onClick="javascript:window.history.go(-1)" >         
 </center>   
 <%     
 }  
 %> 
 <div id="div1"><img src="Lighthouse.jpg" /></div>   
 <div align="center">
</body>
</html>