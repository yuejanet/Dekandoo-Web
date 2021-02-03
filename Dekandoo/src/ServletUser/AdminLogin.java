package ServletUser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import suibian.BeanUser;
import suibian.DAOAdminUser;


/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/manage/adminlogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UserName= request.getParameter("Name");
		String UserPWD= request.getParameter("Pwd");
		
		int count = DAOAdminUser.SeletByName(UserName,UserPWD);
		
		if (count>0) {
		
			BeanUser admin = DAOAdminUser.SeletAllInfos(UserName, UserPWD);
			//test
			if(admin==null) {
				System.out.println("admin is null");
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			session.setAttribute("IsOnligne", "1");
			session.setAttribute("AdminOnligne", "1");
			//test
			System.out.println(session.getAttribute("AdminOnligne"));
			
			response.sendRedirect("admin_AdminPage.jsp");
			
		}else {
			PrintWriter out = response.getWriter();
			
			out.write("<script>");
			out.write("alert('Sorry, you failed to login, please check  your username and password');");
			out.write("location.href='AdminLogin.jsp';");
			out.write("</script>");
		}
		
	}

}
