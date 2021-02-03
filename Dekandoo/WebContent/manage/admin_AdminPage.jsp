<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>Menu</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="layui-icon layui-icon-set-fill"></i>Common Operations</a>
                    <ul class="sub-menu">
                        <li><a href="admin_article.jsp"><i class="layui-icon layui-icon-form" style="margin-right: 10px"></i>Aticle</a></li>
                        <li><a href="/Dekandoo/manage/admin_douser"><i class="layui-icon layui-icon-user" style="margin-right: 10px"></i>User management</a></li>
                        <li><a href="design.html"><i class="layui-icon layui-icon-form" style="margin-right: 10px"></i></a></li>
                        <li><a href="design.html"><i class="layui-icon layui-icon-dialogue" style="margin-right: 10px"></i>Forum</a></li>
                        <li><a href="design.html"><i class="layui-icon layui-icon-align-left" style="margin-right: 10px"></i>Comment</a></li>
                        <li><a href="design.html"><i class="layui-icon layui-icon-form" style="margin-right: 10px"></i></a></li>
                        <li><a href="design.html"><i class="layui-icon layui-icon-fire" style="margin-right: 10px"></i>Advert</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="layui-icon layui-icon-set-sm"></i>System Management</a>
                    <ul class="sub-menu">
                        <li><a href="system.html"><i class="layui-icon layui-icon-util"></i>System</a></li>
                        <li><a href="system.html"><i class="layui-icon layui-icon-delete"></i>Clear cache</a></li>
                        <li><a href="system.html"><i class="layui-icon layui-icon-export"></i>Backup</a></li>
                        <li><a href="system.html"><i class="layui-icon layui-icon-refresh"></i>Restore</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class=" layui-icon layui-icon-notice"></i><span>Wellcome to administration backstage management</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>Shortcut Menu</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="insert.html"><i class="layui-icon layui-icon-form"></i>Add article</a>
                    <a href="insert.html"><i class="icon-font">&#xe005;</i></a>
                    <a href="insert.html"><i class="icon-font">&#xe048;</i></a>
                    <a href="insert.html"><i class="icon-font">&#xe041;</i></a>
                    <a href="#"><i class="layui-icon layui-icon-align-left">&#xe01e;</i>Manage comments</a>
                </div>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>Basic system information</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab"></label><span class="res-info">WINNT</span>
                    </li>
                   
                    <li>
                        <label class="res-lab">Environment</label><span class="res-info">Tomcat v9.0</span>
                    </li>
                    <li>
                        <label class="res-lab">Version</label><span class="res-info">v-0.1</span>
                    </li>
                    <li>
                        <label class="res-lab">Upload attachment limite</label><span class="res-info">2M</span>
                    </li>
                    
                    <li>
                        <label class="res-lab">URL/IP</label><span class="res-info">localhost [ 127.0.0.1 ]</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info">127.0.0.1</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>HELP</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">More infos</label><span class="res-info"><a href="http://www.lmonkey.com/" target="_blank">学习猿地</a></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>