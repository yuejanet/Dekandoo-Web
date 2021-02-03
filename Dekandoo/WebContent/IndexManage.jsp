<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/Dekandoo/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/Dekandoo/css/main.css"/>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">
	
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">Backstage management</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="admin_AdminPage.jsp">Home</a></li>
                <li><a href="/Dekandoo/index/HomePage.jsp" target="_blank">HomeSite</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">Administrator: <strong>${admin.user_name}</strong></a></li>
                <li><a href="#">Modifty password</a></li>
                <li><a href="/Dekandoo/manage/adminlogout">Logout</a></li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>