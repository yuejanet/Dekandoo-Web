<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="/Dekandoo/layui-v2.5.6/layui/layui.js"></script>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">

<div class="nav">
	<ul class="layui-nav layui-bg-cyan" lay-filter="">
	  <li class="layui-nav-item"><a href="">Latest</a></li>
	  <li class="layui-nav-item "><a href="">Programme</a></li>
	  <li class="layui-nav-item"><a href="">Activity</a></li>
	  <li class="layui-nav-item">
	    <a href="javascript:;">Cooperation</a>
	    <dl class="layui-nav-child"> <!-- drop down -->
	      <dd><a href="">with local</a></dd>
	      <dd><a href="">with authorities</a></dd>
	      <dd><a href="">abroad</a></dd>
	    </dl>
	  </li>
	  <li class="layui-nav-item"><a href="/Dekandoo/index/Forum.jsp">Community</a></li>
	  <li class="layui-nav-item"><a href="/Dekandoo/index/AboutUs.jsp">Contact</a></li>
	</ul>

</div> 

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