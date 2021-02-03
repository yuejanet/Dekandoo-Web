package ServletUser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import suibian.BeanNormalUser;
import suibian.DAONormalUser;

/**
 * Servlet implementation class Login
 */
@WebServlet("/index/login")
public class Login extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UserName= request.getParameter("username");
		String UserPWD= request.getParameter("password");
		
		int count = DAONormalUser.SeletByName(UserName,UserPWD);
		
		if (count>0) {
			HttpSession session = request.getSession();
			BeanNormalUser user = DAONormalUser.SeletAllInfos(UserName, UserPWD);
			if(user==null) {
				System.out.println("user is null");
			}
			session.setAttribute("name", user);
			session.setAttribute("IsOnligne", "1");
			
			response.sendRedirect("HomePage.jsp");
			
		}else {
			PrintWriter out = response.getWriter();
			
			out.write("<script>");
			out.write("alert('Sorry, you failed to login, please check  your username and password');");
			out.write("location.href='Login.jsp';");
			out.write("</script>");
		}
		
	}

}
