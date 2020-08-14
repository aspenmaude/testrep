package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.vo.Contact;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Contact contact = new Contact();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("Home", contact);
		
		String prefix = "/WEB-INF/views/";
		String postfix = ".jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(prefix + "home" + postfix);
		dispatcher.forward(request, response);
		
		
		response.setContentType("text/html;charset=UTF-8");
	}

}
