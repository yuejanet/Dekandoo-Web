<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">
<script src="/Dekandoo/layui-v2.5.6/layui/layui.js"></script>
<script type="text/javascript" src="/Dekandoo/index/include/CheckCode.js"></script>
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
	.banner{
		background-image:url("/Dekandoo/ressource/images/timg.jpg"); 
		background-repeat:no-repeat;
		background-position: center center;
		height:700px;
		}
	.banner-box{
		width: 700px;
		height:300px;
		background-color:#0A67A3;
		opacity:0.7;
		filter:alpha(opacity=40);
		padding-top: 100px;
		position: middle;
		}
	
	.who{
		background-color:#86B32D;
		height:300px;
	}
	.article{
		display:block;
		padding-top: 100px;
		padding-bottom: 100px;
		align-items:center;
		}
	.aticle-container{
		dispaly: -webkit;
	}
</style>
</head>
<body>



 <div id="header" class="layui-fluid" style="background-color: #86B32D; ">
	 <div class="layui-row">
		<div id="header1" class="layui-col-md9">
			<div id="homeicon"  style="padding:20px;float:left">
				<a href="HomePage.jsp">
				<i class="layui-icon layui-icon-home"  style="font-size: 40px;color: #2F4056;"></i> </a>	
			</div>
			<div id="LOGO"></div>
			<div id="title" style="float:left;padding:20px;">
				<h1>Dekandoo</h1>
			</div>
		</div>
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
<div class="nav">
	<ul class="layui-nav layui-bg-cyan" lay-filter="">
	  <li class="layui-nav-item"><a href="">Latest</a></li>
	  <li class="layui-nav-item "><a href="">Project</a></li>
	  <li class="layui-nav-item">
	    <a href="javascript:;">Cooperation</a>
	    <dl class="layui-nav-child"> <!-- drop down -->
	      <dd><a href="/Chongqing/home.jsp">with local</a></dd>
	      <dd><a href="">with authorities</a></dd>
	      <dd><a href="">abroad</a></dd>
	    </dl>
	  </li>
	  <li class="layui-nav-item"><a href="/Dekandoo/index/Forum.jsp">Community</a></li>
	  <li class="layui-nav-item"><a href="/Dekandoo/index/AboutUs.jsp">About Us</a></li>
	</ul>

</div> 


<div class="layui-carousel" id="test1">
  <div carousel-item>
    <div><center><img src="/Dekandoo/ressource/images/Senegal.jpg" width="80%" height="100%"></center></div>
    <div><center><img src="/Dekandoo/ressource/images/d.jpg" width="80%" height="100%"></center></div>
    <div><center><img src="/Dekandoo/ressource/images/e.jpg" width="80%" height="100%"></center></div>
  </div>
</div>
<div class="article">
	<div class="aticle-container">
		<div>
			<h1>Aticle</h1>
			<p>This<strong>Article</strong>is update our new project</p>
		</div>
		<div class="article-img"><img alt="" src="/Dekandoo/ressource/images/imgpsh_fullsize (3).jpg">
		</div>
	</div>
</div>

<div class="banner">
 	<div class="banner-box">
	      <div style="padding: 50px;">
	               <p style="color:white; font-size:30px;">Development of the challenge</p>
	               <p style="color:white; font-size:16px; padding-top: 10px;">The main challenge that "Dekandoo" want to address is the one related to the tourism
					sector. Tourism activity will be the tool to solve the following three challenges: unequal
					opportunities, health and rural undevelopement.</p>
	               <a  href="#" title="Where we are">+</a>
	      </div>
	 </div>
</div>



 
<div class="who">
	  <center><h2 style="color: #37475b; padding-top: 50px">Who we are</h2>

      <p style="color: #37475b;font-size:16px; padding: 50px">The project was born from the idea of making a positive impact on society and the environment. 
      Each of the decisions we take daily affects around us. 
      This is why it is important to consume and to act in a more respectful way.
	  We met each other in an entrepreneurial experience with people from different parts of the world (Spain, Senegal and China). We went to Senegal to cocreate
	   as teams with people from there and create innovative business solutions to social-economic challenges.
	The challenge we wanted to face was that local communities do not get direct benefits from tourism. 
	In this way "Dekandoo" was born and our community started to grow. 
	
	What we want to ask you is "Do you want to join us?"
</p></center>

</div>

<div class="layui-row" style="background-color:#2F4056;">
	<footer id="footer">
		<center><p style='font-size:14px; color:#fff;padding-top:20px;'>THE TEAM DEKANDOO FROM PROJECT ABC</p></center>
	</footer>
	<div class="Name" style='padding: 10px;'>
        <center><small style='color:#fff;'>© 2019 Africa Basque Challenge</small></center>
    </div>
</div>

<script src="/static/build/layui.js"></script>

<script>
layui.use('carousel', function(){
  var carousel = layui.carousel;

  carousel.render({
    elem: '#test1'
    ,width: '100%' 
    ,arrow: 'always' 
   
  });
});
</script>

<script>

layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
</body>
</html>