package tp.kits3.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login3Servlet
 */
@WebServlet("/Login3")
public class Login3Servlet extends HttpServlet {
	//HttpServlet from GenericServlet implement Serializable's rule
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login3Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Type of data from client
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("uname");
		String pass = request.getParameter("upass");
		// connection to DB, Send SQL, Search user info
		String message = "not valid info";
		if (name.isEmpty()) {
			if (pass.isEmpty() && pass.length() > 11) {
				message = "vailed info";
			}
		}
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(message);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// open form
		
	}
	

}
