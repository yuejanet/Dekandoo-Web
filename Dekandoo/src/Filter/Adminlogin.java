package Filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Adminlogin
 */
@WebFilter("/manage/*")
// filter multi site:  @WebFilter("/manage/*") add a * in the end
public class Adminlogin implements Filter {


	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest req= (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		HttpSession session = req.getSession();
		String flag = (String)session.getAttribute("AdminOnligne");
		
		String request_uri= req.getRequestURI();
		String ctxPath = req.getContextPath();
		String uri= request_uri.substring(ctxPath.length());
		
		System.out.println(request_uri +"#"+ ctxPath+"#" + uri);
		
		if(uri.contains("admin_")) {
			if(flag!=null && flag.equals("1")) {
				chain.doFilter(req, resp);
			}else {
				PrintWriter out = resp.getWriter();
				out.write("<script>");
				out.write("alert('please login in again');");
				out.write("location.href='AdminLogin.jsp';");
				out.write("</script>");
				out.close();
				return;
			}
		}else {
			chain.doFilter(req, resp);
		}
		return;
		
		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
