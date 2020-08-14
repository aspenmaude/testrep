package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.ContactDao;
import tp.kits3.livedinner.nghia.vo.Contact;

/**
 * Servlet implementation class aboutServlet
 */
@WebServlet("/about")
public class aboutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Contact contact = new Contact();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aboutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("About", contact);
		
		String prefix = "/WEB-INF/views/";
		String postfix = ".jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(prefix + "about" + postfix);
		dispatcher.forward(request, response);
		
		
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
