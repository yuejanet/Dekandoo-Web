<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <script  th:src="@{js/jquery-1.12.4.min.js}" src="js/jquery-1.12.4.min.js"></script>
    <link th:href="@{../css/bootstrap/3.3.6/bootstrap.min.css}" href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet"/>
    <script th:src="@{js/bootstrap/3.3.6/bootstrap.min.js}" src="js/bootstrap/3.3.6/bootstrap.min.js"></script>

    <script type="text/javascript" th:src="@{js/private.js}"></script>
    <link th:href="@{css/tx.css}" rel="stylesheet"/>
</head>
<body>
<canvas id="canvas"></canvas>
<script type="text/javascript" th:src="@{js/canvas.js}"></script>


<div class="container">
    <div th:replace="head::header"></div>


    <div class="row" th:each="post:${page.modelList}">
        <div class="col-xs-12">
            <div class="panel panel-info">
                <div class="panel-heading" th:text="${post.ptitle}" style="font-size: 18px;font-weight: bolder">Title</div>
                <div class="panel-body" th:utext="${post.pbody}" style="height: 95px;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 4;overflow: hidden; ">
                   Content<br/>
                    Content<br/>
                   Content<br/>

                  Content<br/>
                </div>
                <div class="panel-footer" style="height: 40px;">
                    <div class="col-xs-2">
                        <span class="text-info" th:text="|username:${post.user.uname}|">User:xxx</span>
                    </div>
                    <!-- <div class="col-xs-6">
                        <span class="text-primary"
                              th:text="${post.lastreplytime==null}?|post time:${#dates.format(post.psendtime,'yyyy-MM-dd HH:mm:ss')}|:|最后回复时间:${#dates.format(post.lastreplytime,'yyyy-MM-dd HH:mm:ss')}|">最后回复时间:2019-2-5-08:00:00</span>
                    </div> -->
                    <div class="col-xs-2">
                        <span class="badge" th:text="|number response:${post.replyCount}|">response:42</span>
                    </div>
                    <div class="col-xs-1">
                        <a th:href="|/post/${post.pid}.html|">
                            <button type="button" class="btn btn-primary btn-xs">Check </button>
                        </a>
                    </div>
                    <div class="col-xs-1" th:if="${session.user!=null}?(${session.user.uid == post.user.uid}?true:${session.user.level==0}):false">
                        <a th:href="|/delete/${post.pid}|">
                            <button type="button" class="btn btn-primary btn-xs">Delete</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-12">
            <nav>
                <ul class="pager">
                    <li class="previous" th:if="${page.currentPage!=1}"><a th:href="|?page=${page.currentPage-1}|"><span aria-hidden="true">&larr;</span> Last page</a></li>
                    <li class="text-primary" th:text="|当前第${page.currentPage}页，共${page.pageTotal}Page|">当前第1页，共4页</li>
                    <li class="next" th:if="${page.currentPage!=page.pageTotal}"><a th:href="|?page=${page.currentPage+1}|">Next page<span aria-hidden="true">&rarr;</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>

</body>
</html>