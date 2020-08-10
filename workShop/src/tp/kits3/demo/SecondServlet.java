package tp.kits3.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@SuppressWarnings("serial")
@WebServlet("/ba")
public class SecondServlet extends GenericServlet {

//	/**
//	 * version of this class(servlet)
//	 * 
//	 */
//	private static final long serialVersionUID = 1L;

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO: How to response
		// 1.Set Content-type
		res.setContentType("text/html;charset=UTF-8");
		
		// 2. OutputStream to client
		PrintWriter out = res.getWriter(); // our data is test
		
		// 3. Send HTML data
		out.println("<html><head><title>SecondDemo</title></head>");
		out.println("<body>");
		out.println("<h1> Second Servlet by response object </h1>");
		out.println("</body></html>");
		
		
	}

}
