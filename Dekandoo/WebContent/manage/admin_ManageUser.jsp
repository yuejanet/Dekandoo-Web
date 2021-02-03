<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User manage</title>
<link rel="stylesheet" type="text/css" href="/Dekandoo/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/Dekandoo/css/main.css"/>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">

</head>
<body>
<jsp:include page="/IndexManage.jsp"></jsp:include>
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
<div class="main-wrap">
	<div class="crumb-wrap">
            <div class="crumb-list"><i class="layui-icon layui-icon-home"></i><a href="admin_AdminPage.jsp">Home</a><span class="crumb-step">&gt;</span><span class="crumb-name">User Management</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="/Dekandoo/manage/admin_douser" method="get">
                    <table class="search-tab">
                        <tr>
                            
                            <th width="70">Key words</th>
                            <td><input class="common-text" placeholder="Key word" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="search" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="admin_AddArticle.jsp" style="color:#428bca"><i class="layui-icon layui-icon-addition"></i><strong>Add User</strong></a>
                        <a id="batchDel" href="javascript:void(0)" style="color:#428bca"><i class="layui-icon layui-icon-subtraction"></i><strong>Delete</strong></a>
                        <a id="updateOrd" href="javascript:void(0)" style="color:#428bca"><i class="layui-icon layui-icon-refresh-1"></i><strong>Update</strong></a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                           <td class="tc"><input name="id[]" value="${u.USER_ID}" type="checkbox"></td>
                         
                            <th>ID</th>
                            <th>NAME</th>
                            <th>SEX</th>
                            <th>EMAIL</th>
                            <th>NATIONALITY</th>
                            <th>IDENTIFY</th>
                            <th>Operation</th>
                            
                        </tr>
                        <c:forEach items="${userlist}" var="u">
                        <tr>
                            <td class="tc"><input name="id[]" value="${u.USER_ID}" type="checkbox"></td>
                            <td>${u.USER_ID}</td>
                            <td>${u.USER_NAME}</td>
                            <td>${u.USER_SEX}</td>
                            <td>${u.EMAIL}</td>
                            <td>${u.NATIONALITY}</td>
                            <td>${u.IDENTIFY}</td>
                            
                            <td>
                                <a class="link-update" style="color:#428bca" href="#"><strong>Modify</strong></a>
                                <a class="link-del" style="color:#428bca" href="#"><strong>Delete</strong></a>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
                    <div class="list-page"> 
                     Total ${items} items, Now ${cpage}/${tpage} page
                     <a href="admin_douser?cp=1">First Page</a>
                     <a href="admin_douser?cp=${cpage-1 <0?1:cpage-1}"><i class="layui-icon layui-icon-prev"></i></a>
                     <a href="admin_douser?cp=${cpage+1 >tpage? tpage:cpage+1}"><i class="layui-icon layui-icon-next"></i>  </a>
                     <a href="admin_douser?cp=${tpage} ">Last Page</a> 
                    
					</div>
                </div>
            </form>
        </div>
	</div>
</div>

</body>
</html>