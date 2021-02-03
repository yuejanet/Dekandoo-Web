package ServletUser;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/index/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session= request.getSession();
	
	session.removeAttribute("name");
	session.removeAttribute("IsOnligne");
	
	response.sendRedirect("HomePage.jsp");
	}

	
}
