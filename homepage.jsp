<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%  
String path = request.getContextPath(); 
String basePath =  request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
<!-- body{background-color:#dddddd;}

-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home page</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<!--[if IE]>   
<link rel="stylesheet" href="css/ie.css" type="text/css" 
charset="utf-8">   
<![endif]-->
</head>
<body>
<div id="page">   
<div id="header">       
<a  id="logo"><img src="Penguins.jpg"  alt="LOGO"><center><h1><font size="5">Online Bank Home Page
</font><br></center></a>
<ul id="navigation">     
<li class="selected">       
<a href="index.html" title="Home"></a>       
<li> <a href="login.jsp">Log out</a></li>      
</li>
<li>    
<a href="saving.jsp">Saving</a></li>
<li>        
<a href="withdrawl.jsp">Withdrawl</a></li>
</ul>
<div id="adbox">
<img src="tupian1.jpg" alt="Img" height="300" width=100%>
<div class="details">
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size="5">welcome to Ming Cheng's bank</font><br></h1>
<center><h1><font size="5">Thank you for becoming our member!
</font><br></h1></center>
</div>      
</div>    
</div>
</div>

</body>
</html>