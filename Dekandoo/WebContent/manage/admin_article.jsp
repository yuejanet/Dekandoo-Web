<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Article manage</title>
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
            <div class="crumb-list"><i class="layui-icon layui-icon-home"></i><a href="admin_AdminPage.jsp">Home</a><span class="crumb-step">&gt;</span><span class="crumb-name">Article Management</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">Choice category</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="">All</option>
                                    <option value="19">HomePage</option><option value="20">Latest</option>
                                </select>
                            </td>
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
                        <a href="admin_AddArticle.jsp" style="color:#428bca"><i class="layui-icon layui-icon-addition"></i><strong>Add article</strong></a>
                        <a id="batchDel" href="javascript:void(0)" style="color:#428bca"><i class="layui-icon layui-icon-subtraction"></i><strong>Delete</strong></a>
                        <a id="updateOrd" href="javascript:void(0)" style="color:#428bca"><i class="layui-icon layui-icon-refresh-1"></i><strong>Update</strong></a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>Order</th>
                            <th>ID</th>
                            <th>Title</th>
                            <th>The Status</th>
                            <th>Click</th>
                            <th>Publisher</th>
                            <th>Update time</th>
                            <th>Comment</th>
                            <th>Opration</th>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                            <td>
                                <input name="ids[]" value="59" type="hidden">
                                <input class="common-input sort-input" name="ord[]" value="0" type="text">
                            </td>
                            <td>59</td>
                            <td title="classic"><a target="_blank" href="#" title="classic">Our first article</a>...
                            </td>
                            <td>0</td>
                            <td>2</td>
                            <td>admin</td>
                            <td>2014-03-15 21:11:01</td>
                            <td></td>
                            <td>
                                <a class="link-update" style="color:#428bca" href="#"><strong>Modify</strong></a>
                                <a class="link-del" style="color:#428bca" href="#"><strong>Delete</strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="58" type="checkbox"></td>
                            <td>
                                <input name="ids[]" value="58" type="hidden">
                                <input class="common-input sort-input" name="ord[]" value="0" type="text">
                            </td>
                            <td>58</td>
                            <td title="second"><a target="_blank" href="#" title="second">THE second</a>...
                            </td>
                            <td>0</td>
                            <td>35</td>
                            <td>yue</td>
                            <td>2013-12-30 22:34:00</td>
                            <td></td>
                            <td>
                                <a class="link-update" style="color:#428bca" href="#"><strong>Modify</strong></a>
                                <a class="link-del" style="color:#428bca" href="#"><strong>Delete</strong></a>
                            </td>
                        </tr>
                    </table>
                    <div class="list-page"> 2  1/1 Page</div>
                </div>
            </form>
        </div>
	</div>
</div>

</body>
</html>