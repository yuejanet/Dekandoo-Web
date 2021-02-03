package ServletUser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import suibian.DAONormalUser;

/**
 * Servlet implementation class CheckUserName
 */
@WebServlet("/checkusername")
public class CheckUserName extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name= request.getParameter("name");
		
		int have = DAONormalUser.CheckByName(name);
		
		PrintWriter out = response.getWriter();
		if(have>0) {
			out.print("false");
		}else {
			out.print("true");
		}

		out.close();
	}

	

}
