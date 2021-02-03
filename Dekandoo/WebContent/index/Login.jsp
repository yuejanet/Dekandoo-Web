<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel= "stylesheet" href="/Dekandoo/layui-v2.5.6/layui/css/layui.css">
<script src="/Dekandoo/js/CheckCode.js"></script>
<script src="/Dekandoo/layui-v2.5.6/layui/layui.js"></script>
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
	height:400px;
	width:500px;
	margin-top: 300px;
	
	position: relative;
	left :50%; top:50%;transform: translate( -50% , -50%);
}
table 
{
    width:90%;
    align:center;
}
tr{
	height:30px;
	align: center;
}
</style>

</head>
<body>
<jsp:include page="/Index.jsp"></jsp:include>


<div id="back">
	<div class="hpanel"><center>
		<%
			Object error = session.getAttribute("error");
			if(error!=null){
			%>
			<span style= "color:red"><%=error %></span>
			<% 	
			}
		%>
	</center>	
	</div>
	
	<div id="formblock">
		<center><p style="font-size: 30px; color: #2F4056;padding: 30px;">LOGIN</p></center>
		<form class="layui-form" action="/Dekandoo/index/login" method="post" >
			
			<table style="margin: 50px;">
				<tr>
					<!-- <td ><p style="font-size:20px; color: #2F4056;">Username</p></td> -->
					<td style="padding-top: 10px;">
					<input class="layui-input" id="userName" type="text" name="username" maxlength= "20" placeholder="Enter your userName"/>
					</td>
				</tr>
				
				<tr>
					<!-- <td><p style="font-size:20px; color: #2F4056;">password</p></td> -->
					<td style="padding-top: 10px;">
					<input class="layui-input" id="pwd" type="password" name="password" maxlength= "20" placeholder="Enter your password"/>
					</td>
				</tr>
				<tr>
					<td style="padding-top: 10px;">
						<input class="layui-input" style="float:left;"type="text" id="CODE" maxlength= "5" placeholder="Enter the random code"/>
						<input style="float:left;"type="button" id="checkCode" class="code" οnclick="createCode()" />
						<a style="float:left;" href="Login.jsp" οnclick="createCode()">it's not clear</a><br>
						
						
					</td>
				</tr>
				<tr align="center">
					
	      			
					 <td style="align:center; padding: 15px;">
					<button class="layui-btn " lay-submit onclick="validate()">Submit</button>
					<!-- <button class="layui-btn" lay-submit type="submit">Sebmit</button> -->
					<!-- <input class="layui-btn" lay-submit lay-filter="formDemo" type="submit"  value="LOGIN" />-->
					</td>
				</tr>
				
			</table>
		</form>
	</div>
</div>
<jsp:include page="include/footer.jsp"></jsp:include>	
</body>
</html>