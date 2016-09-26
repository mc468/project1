<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>My JSP 'saving.jsp' starting page</title>
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
div#div1 > img {  
height:100%;  
width:100%;  
border:0;  
}
</style>
<body>
<div id="div1"><img src="Penguins.jpg" /></div>
<br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
<center>   
<fieldset> 
<form action="homepage.jsp" method="post">    
<table bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" border="1">
<tr style="background-color: rgb(192, 192, 192);">           
<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
<font color="#000000"><strong>user saving</strong></font>
</td>     
</tr>
<tr>           
<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" style="background-color: rgb(192, 192, 192);"">             
<font color="#000000" style="background-color:  rgb(192, 192, 192);""><strong>saving balance:</strong></font>
</td> 
<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" style="background-color: rgb(192, 192, 192);">        
<input type="money" name="money" id="money"  style="width:180px; height:16px;" /></td>   
</tr>     
<tr>           
<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" style="background-color: rgb(192, 192, 192);">       
<strong><input type="submit" value="saving"></strong>                      
</td>    
</center>
</body> 
</html>
