<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
 	<meta charset="utf-8">
    <title>My Space</title>
    <link rel="stylesheet" type="text/css" href="/Dekandoo/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="/Dekandoo/css/mygrxx.css"/>
</head>
<body>
<!------------------------------idea------------------------------>
<jsp:include page="/Index.jsp"></jsp:include>
<div class="address mt">
    <div class="wrapper clearfix"><a href="HomePage.jsp" class="fl">HOME PAGE</a>
    <span>/</span><a href="MyAcount.jsp" class="on">My Space</a></div>
</div><!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3><a href="#"><img src="/Dekandoo/img/tx.png"/></a>
                <p class="clearfix"><span class="fl">${name.USER_NAME}</span>
                </h3>
            <div><h4><b>My candidates</b></h4>
                <ul>
                    <li><a href="cart.html">Saved</a></li>
                    <li><a href="myorderq.html">Process</a></li>
                    <li><a href="myprod.html">My offers</a></li>
                </ul>
                <h4><b>My favorites</b></h4>
                <ul>
                    <li><a href="mygxin.html">Articles/Activities </a></li>
                    <li><a href="address.html">Poste</a></li>
                </ul>
                <h4><b>Account manage</b></h4>
                <ul>
                    <li class="on"><a href="mygrxx.html">Information</a></li>
                    <li><a href="remima.html">Modify my password</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>Personal Information</h2>
            <div class="gxin">
                <div class="tx"><a href="#"><img src="/Dekandoo/img/tx.png"/>
                    <p id="avatar">Change portrait</p></a></div>
                <div class="xx"><h3 class="clearfix"><strong class="fl">Basic information</strong><a href="#" class="fr" id="edit1">edit</a>
                </h3>
                    <div>Username:${name.USER_NAME}</div>
                    <div>Rigestration time: ${name.REGISTER_TIME}</div>
                    <div>Sex: ${name.USER_SEX}</div>
                    <div> My identity: ${name.IDENTIFY}</div>
                    <!--<div><span class="fl">银行卡</span><a href="#" class="fr">管理</a></div>-->
                    <div><span class="fl">My account region: ${name.NATIONALITY}</span><a href="#" class="fr" id="edit2">Modify</a></div>
                </div>
            </div>
        </div>
    </div>
</div><!--遮罩-->
 <div class="mask"></div>
 <!--编辑弹框-->
<!-- <div class="bj">
    <div class="clearfix"><a href="#" class="fr gb"><img src="img/icon4.png"/></a></div>
    <h3>编辑基础资料</h3>
    <form action="#" method="get"><p><label>姓名：</label><input type="text" value="六六六"/></p>
        <p><label>生日：</label><input type="text"/></p>
        <p><label>性别：</label><span><input type="radio"/>男</span><span><input type="radio"/>女</span></p>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div><!--高级设置修改-->
<!-- <div class="xg">
    <div class="clearfix"><a href="#" class="fr gb"><img src="img/icon4.png"/></a></div>
    <h3>切换账号地区</h3>
    <form action="#" method="get"><p><label>姓名：</label><input type="text" value="六六六"/></p>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div><!--修改头像-->
<!-- <div class="avatar">
    <div class="clearfix"><a href="#" class="fr gb"><img src="img/icon4.png"/></a></div>
    <h3>修改头像</h3>
    <form action="#" method="get"><h4>请上传图片</h4><input type="button" value="上传头像"/>
        <p>jpg或png，大小不超过2M</p><input type="submit" value="提交"/></form>
</div><!--返回顶部-->
<!-- <div class="gotop"><a href="cart.html">
    <dl>
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygxin.html">
    <dl>
        <dt><img src="img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div> -->
    <!--footer-->
<jsp:include page="/index/include/footer.jsp"></jsp:include>

<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>