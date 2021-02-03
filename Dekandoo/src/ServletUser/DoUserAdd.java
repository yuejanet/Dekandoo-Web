package ServletUser;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Random;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import suibian.BeanNormalUser;
import suibian.DAONormalUser;

/**
 * Servlet implementation class DoUserAdd
 */
@WebServlet("/index/admin_douseradd")
public class DoUserAdd extends HttpServlet {

	/**
	 * 
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("UserName");
		String sex = request.getParameter("Sex");
		String nationality = request.getParameter("Nationality");
		String email = request.getParameter("Email");
		String psw = request.getParameter("Password");
		//String date=request.getParameter("date");
		String identify = request.getParameter("Identify");
		
		java.sql.Date Date= new java.sql.Date(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String date = format.format(Date); 
		//java.sql.Date date1 = new java.sql.Date(new java.util.Date().getTime());
        
		
		Random r= new Random();
		int id = r.nextInt(100);
		// create a instantiation
        BeanNormalUser u = new BeanNormalUser(id, username, psw, sex ,date, email, nationality,identify );
        
        //add into basedata via serviceDAO 
        int count= DAONormalUser.insert(u);
        //if succesed or failed , where should i redirect
        if (count>0) {
        	response.sendRedirect("HomePage.jsp");
        }else {
        	PrintWriter out = response.getWriter();
        	out.write("<script>");
        	out.write("alert('failed to register');");
        	out.write("location.herf='register.jsp';");
        	out.write("</script>");
        }
		
	}

}
