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
            <div class="crumb-list"><i class="layui-icon layui-icon-home"></i><a href="admin_AdminPage.jsp">Home</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="admin_article.jsp">Article Management</a><span class="crumb-step">&gt;</span><span>Add Article</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="/jscss/admin/design/add" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody><tr>
                            <th width="120"><i class="require-red">*</i>Classement</th>
                            <td>
                                <select name="colId" id="catid" class="required">
                                    <option value="">please choice</option>
                                    <option value="19">HomePage</option><option value="20">Latest</option>
                                </select>
                            </td>
                        </tr>
                            <tr>
                                <th><i class="require-red">*</i>Title:</th>
                                <td>
                                    <input class="common-text required" id="title" name="title" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>Author:</th>
                                <td><input class="common-text" name="author" size="50" value="admin" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>Outline:</th>
                                <td><input name="smallimg" id="file" type="file"><!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="Submit photo"/>--></td>
                            </tr>
                            <tr>
                                <th>Content:</th>
                                <td><textarea name="content" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></textarea></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="submit" type="submit">
                                    <input class="btn btn6" onClick="history.go(-1)" value="return" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div> 
</div>
</body>
</html>