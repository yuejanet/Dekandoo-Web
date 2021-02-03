<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">
<style type="text/css">
	h1{font-size:50px;
	font-family:"Times New Roman",Times,serif;
	font-style:italic;
	}
	.code {
				font-family: Arial;
				font-style: italic;
				font-weight: bold;
				border: 0;
				letter-spacing: 3px;
				color: blue;
			}
	#header {
			  position: -webkit-sticky;
			  position: sticky;
			  top: 0;
			  padding: 5px;
			  z-index:1;
			}
</style>
</head>
<body>
<script src="/Dekandoo/layui-v2.5.6/layui/layui.js"></script>
<script type="text/javascript" src="/Dekandoo/index/include/CheckCode.js"></script>
<div id="header" class="layui-fluid" style="background-color: #86B32D; ">
	 <div class="layui-row">
		<div id="header1" class="layui-col-md9">
			<div id="homeicon"  style="padding:20px;float:left">
				<a href="/Dekandoo/index/HomePage.jsp">
				<i class="layui-icon layui-icon-home"  style="font-size: 40px;color: #2F4056;"></i> </a>	
			</div>
			<div id="LOGO"></div>
			<div id="title" style="float:left;padding:20px;">
				<h1>Dekandoo</h1>
			</div>
		</div>
		<!--  <div id="header2" class="layui-col-md3" style="position: relative;padding:20px;">
			<div id="loginIcon"><i class="layui-icon layui-icon-user"  style="font-size: 30px;float:left; margin:10px;color: #2F4056;" ></i></div>
			<div id="loginLine" style="position: relative; margin:10px;float:left;"><h2><a href="Login.jsp">Login</a>/<a href="register.jsp">Register</a></h2></div>
		</div>-->
		<div id="header2" class="layui-col-md3" style="position: relative;padding:20px;">
			<c:if test="${IsOnligne !=1}">	
				<div id="loginIcon"><i class="layui-icon layui-icon-username"  style="font-size: 30px;float:left; margin:10px;color: #2F4056;" ></i></div>
				<div id="loginLine" style="position: relative; margin:10px;float:left;">	
				<h2><a href="Login.jsp">Login</a>/<a href="register.jsp">Sign up</a></h2></div>
			</c:if>
				
			<c:if test="${IsOnligne ==1}">
				<div id="loginIcon2"><i class="layui-icon layui-icon-face-smile-b"  style="font-size: 30px;float:left; margin:10px;color: #2F4056;" ></i></div>
				<div id="loginLine2" style="position: relative; margin:10px;float:left;">
				<h2>HELLO:${name.USER_NAME}</h2>
				<a href="MyAcount.jsp"><font color= "#FFB800"><strong>My Space</strong></font></a>
			    <span class="fr" style="float:right"><a href="/Dekandoo/index/logout"><font color= "#FFB800"><b>Logout</b></font></a></span>
				</div>
			</c:if>
		</div>
	</div>
</div>





</body>
</html>