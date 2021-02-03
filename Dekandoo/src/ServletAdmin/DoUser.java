package ServletAdmin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import suibian.BeanNormalUser;
import suibian.DAONormalUser;

/**
 * Servlet implementation class DoUser
 */
@WebServlet("/manage/admin_douser")
public class DoUser extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int cpage=1; // current page
		int count = 5; //Number of items displayed per page
		
		//obtain the page where user indicated 
		String cp = request.getParameter("cp");
		
		//obtain user's keywords
		String keyword = request.getParameter("keywords");
		
		if (cp!=null) {
			cpage=Integer.parseInt(cp);
		}
		int arr[]= DAONormalUser.totalPage(count);
		
				
		//
		// obtain all users information
		ArrayList<BeanNormalUser> list = DAONormalUser.selectAll(cpage, count, keyword);
		
		//put into request 
		request.setAttribute("userlist", list);
		request.setAttribute("tpage", arr[1]);
		request.setAttribute("items", arr[0]);
		request.setAttribute("cpage", cpage);
		// redirect the jsp page
		request.getRequestDispatcher("admin_ManageUser.jsp").forward(request, response);;
	}

	

}
