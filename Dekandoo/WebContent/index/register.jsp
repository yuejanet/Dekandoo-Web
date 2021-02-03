<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register form</title>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">
<script src="/Dekandoo/layui-v2.5.6/layui/layui.js"></script>  
<script src="/Dekandoo/js/CheckCode.js"></script>
<script src="/Dekandoo/js/jquery-1.12.4.min.js"> </script>
<script  src="/Dekandoo/js/Checkform.js"></script>
<style>
	body
	{
		background-image:url("/Dekandoo/ressource/images/Senegal.jpg");
		background-repeat:repeat-x;
		background-position: center center;

	}
	#formblock{
		background-color:#f2f2f2;
		opacity:0.9;
		filter:alpha(opacity=40);
		height:600px;
		width:800px;
		margin-top:20px;
		margin-bottom:60px;
		position: relative;	
	}
	.error{
		display: online-block;
		border:1px solid #ff855a;
		background-color: #ffe8e0;
	}
	
</style>

</head>
<body>
<jsp:include page="/Index.jsp"></jsp:include>


<!-- left :50%; top:50%;transform: translate( -50% , -50%); -->
<center><div id="formblock">
	<center><p style="font-size: 30px; color: #2F4056;padding: 30px;">REGISTER</p></center>
	<form class="layui-form" action="/Dekandoo/index/admin_douseradd" method="post" name="RegisterForm">
	  <div class="layui-form-item">
	    <label class="layui-form-label">UserName</label>
	    <div class="layui-input-block">
	    	<input id="title" type="text" name="UserName" required onfocus="FocusItem(this)" onblur="CheckItem(this)" lay-verify="required" placeholder="Put in your Name(firstname+lastname)" autocomplete="off" class="layui-input">
	    	<span ></span>
	    </div>
	  </div>
	   
	 <div class="layui-form-item">
	    <label class="layui-form-label">Sex</label>
	    <div class="layui-input-block">
	      <input type="radio" name="Sex" value="Male" title="Male">
	      <input type="radio" name="Sex" value="Female" title="Female" >
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">Nationality</label>
	    <div class="layui-input-block">
	      <select id="Nationality" name="Nationality"value="" lay-verify="required">
	        <option value=""></option>
	        <option value="0">British</option>
	        <option value="1">Chinese</option>
	        <option value="2">French</option>
	        <option value="3">Spanish</option>
	        <option value="4">Senegalese</option>
	      </select>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">E-mail</label>
	    <div class="layui-input-block">
		    <input id="email" type="text" name="Email" required onfocus="FocusItem(this)" onblur="CheckItem(this)" lay-verify="required" placeholder="Put in your e-mail adress" autocomplete="off" class="layui-input">
		    <span></span>
	    </div>
	  </div>
	 
	  
	   <div class="layui-form-item">
	    <label class="layui-form-label">Set your password</label>
	    <div class="layui-input-inline">
	    	<input id="Pwd" type="password" name="Password" required onfocus="FocusItem(this)" onblur="CheckItem(this)"  lay-verify="required" placeholder="please enter the password" autocomplete="off" class="layui-input">
	   		<span ></span>
	    </div>
	    <div class="layui-form-mid layui-word-aux"> At least 8 characters including a number and a lowercase letter.</div>
	  </div>
	  <!--  <div class="layui-form-item">
	    <label class="layui-form-label">Your identify</label>
	    <div class="layui-input-block">
	      <input type="checkbox" name="like[write]" title="Indivisual">
	      <input type="checkbox" name="like[read]" title="professional " checked>
	     lay-filter="formDemo"
	    </div>-->
	    <div class="layui-form-item">
	    <label class="layui-form-label">Confirm password</label>
	    <div class="layui-input-inline">
	    	<input id="RPwd" type="password" name="RePassword" required onfocus="FocusItem(this)" onblur="CheckItem(this)" lay-verify="required" placeholder="please enter the password" autocomplete="off" class="layui-input">
	    	<span ></span>
	    </div>
	    
	  </div>
	  
	    <div class="layui-form-item">
	    <label class="layui-form-label">Identify</label>
		    <div class="layui-input-block">
		      <input type="radio" name="Identify" value="Indivisual" title="Indivisual">
		      <input type="radio" name="Identify" value="Professional" title="Professional" >
		    </div>
	  	</div>
	  
	 <div class="layui-form-item">
				<label class="layui-form-label">Security Code</label>
				<div class="layui-input-inline">
					<input class="layui-input" type="text" id="CODE" maxlength= "5" placeholder="Enter the random code"/>					
					<input style="float:left" type="button" id="checkCode" class="code" οnclick="createCode()" />
					<a  href=register.jsp οnclick="createCode()">it's not clear</a>
					<!--  <button class="layui-btn layui-btn-xs" value="Confirm" id="Confirm" οnclick="validate()" >confirm</button>-->
					
				</div>
	 </div>			
	 <div class="layui-form-item">
	    <div class="layui-input-block">
	     <!--  <button class="layui-btn" lay-submit >Sebmit</button>  -->
	     <button class="layui-btn" lay-submit onclick="validate()">Submit</button>
	      <button type="reset" class="layui-btn layui-btn-primary">Resetting</button>
	       
	    </div>
	  </div>
	 </div>
	</form>
	</center>
</div> 
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //listener
    form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>
<jsp:include page="include/footer.jsp"></jsp:include>	
</body>
</html>