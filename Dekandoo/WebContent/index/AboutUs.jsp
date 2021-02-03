<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">
<script src="/Dekandoo/layui-v2.5.6/layui/layui.js"></script>
<style type="text/css">
	#contact{
			background-color:#86B32D;
			height:400px;
			font:italic; 
		}
	#footerlogo{
			height:30%;
			width: 100%;
			padding: 20px;
	
	li{
		padding:10px;
	}
	#family{
	padding:40px;
	margin:20px;
	
	}
	#US{
	height:600px;
	}
	#introtext{
	margin:40px;
		background-color:#0A67A3;
		opacity:0.7;
		filter:alpha(opacity=40);
	}
	#intro{
		padding: 30px;
	}
	#US{
	
		background-color:#0A67A3;
		opacity:0.7;
		filter:alpha(opacity=40);
	}
	#article{
	margin: 30px;
	height: 100px;
	}
	#members1{
	height:600px;
	padding:40px;
	}
	div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
   
	}
	
	
	div.img img {
	    width: 100%;
	    height: auto;
	    margin:20px;
	}
	
	div.desc {
	   margin:20px;
	    text-align: center;
	}

</style>
</head>
<body>
<jsp:include page="/Index.jsp"></jsp:include>
<jsp:include page="include/menu.jsp"></jsp:include>
	<div id="intro" >
		<div id="US" class="layui-container">
			<div class="layui-row " style="padding:20px">
				<div id="abouttitle" align="center" ><h1>ABOUT US</h1></div>
			</div>
			<div class="layui-row layui-col-space30">
				<div id="family" class="layui-col-md6" align="center" >
					<img src="/Dekandoo/ressource/images/family.jpg" width="100%" height="100%" ></div>
				<div id="introtext" class="layui-col-md6" >
					 <!--  <p class="serif">We are a platform in which people from all over the world can connect and cocreate to make sustainable projects.
						A different way of travelling. You can enjoy travelling and at the same time collaborating with local communities and making a positive impact.
						Our team is specialised in sustainable tourism projects, so we provide the tools and track the projects. Our consultancy services are intended to 
						improve the well-being of local communities and making possible that those communities get direct benefits from tourism.
						As a traveller, you can join a project. You will be immersed in the culture while travelling and cocreating with local people. A way of making a positive impact.
						As a community, you can upload a project that people can join or you can create a sustainable tourism project with "Dekandoo consultancy services".
					</p> -->
					<h2>We are a platform in which people from all over the world can connect and cocreate to make sustainable projects.
						A different way of travelling. You can enjoy travelling and at the same time collaborating with local communities and making a positive impact.
						Our team is specialised in sustainable tourism projects, so we provide the tools and track the projects. Our consultancy services are intended to 
						improve the well-being of local communities and making possible that those communities get direct benefits from tourism.
						As a traveller, you can join a project. You will be immersed in the culture while travelling and cocreating with local people. A way of making a positive impact.
						As a community, you can upload a project that people can join or you can create a sustainable tourism project with "Dekandoo consultancy services".
				
					</h2>
				</div>
			</div>
		</div>
	</div>
	
	<div id="members">
		<div id="members1" class="layui-container">
			<div class="layui-row " style="padding:20px">
				<!--  <div id="abouttitle" align="center" ><h1>ABOUT US</h1></div>-->
			</div>
			<div class="layui-row layui-col-space15" style="padding:20px">
				<div class="layui-col-md4" align="center">
					<div id="ValeryBonang" class="img" style="margin:20px"><img alt="" src="/Dekandoo/ressource/images/valery.png" width="100%" height="100%" ></div>
					<strong>Valery Bonang</strong>
					<div class="desc">Passionate by entrepreneurship and business innovation. I am a Bachelor in Project management and Tourism. French-Spanish speaker, junior consultant and professional in tourism and hospitality. 
					Dekandoo is for me a platform that’s connecting people committed to realize a new style of life by the sustainability.
					</div>
				</div>
				<div  class="layui-col-md4" align="center">
					<div id="Marian" class="img" style="margin:20px"><img alt="" src="/Dekandoo/ressource/images/marain.jpg" width="100%" height="100%" ></div>
					<strong>Marian Tomàs</strong>
					<div class="desc">Professionally focused on projects that creates a positive social and environmental impact in the tourism sector. Dekandoo is passion to create a positive impact on society and discover new perspectives of life.</div>				
				</div>
				<div class="layui-col-md4" align="center">
					<div id="Ane" class="img" style="margin:20px"><img alt="" src="/Dekandoo/ressource/images/Ane.png" width="100%" height="100%" ></div>
					<strong>Ane Davila</strong>
					<div class="desc">Getting into Social Innovation and International Cooperation. I am Co-founder of Mujeres de la Luna, designing responsible tourism experiences with indigenous women communities. Dekandoo is for me challenging myself working in a international team and opening my mind to other realities.</div>
				</div>
			</div>
		</div>
	</div>
	<div id="contact" >
		<div id="inner" class="layui-container">
			<div class="layui-row">
				<div id="footerlogo" align="center" ><h1>LOGO</h1></div>
			</div>
			<div class="layui-row">
				<div id="Liens" class="layui-col-md4" align="center">
					<h2>useful liens</h2>
					<ul>
						<li><a href="https://www.elcaminopeople.com">El Camino People</a></li>
						<li><a href="www.elcaminopeople.com">the other liens related</a></li>
						<li><a href="www.elcaminopeople.com">the other liens related</a></li>
						<li><a href="www.elcaminopeople.com">the other liens related</a></li>
					</ul>
				</div>
				<div id="Contactway" class="layui-col-md4" align="center">
				<h2>Contact</h2>
				</div>
				<div id="FollowMe" class="layui-col-md4" align="center">
				<h2>Folow us</h2>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="include/footer.jsp"></jsp:include>	
</body>
</html>