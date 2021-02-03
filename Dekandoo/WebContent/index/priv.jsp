<%
	Object user = session.getAttribute("user");
	if( user== null){
		response.sendRedirect("mailLogin.jsp");
		return;
	}
%>