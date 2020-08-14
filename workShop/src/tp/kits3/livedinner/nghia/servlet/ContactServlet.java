package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.ContactDao;
import tp.kits3.livedinner.nghia.vo.Contact;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/Contact/list")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Contact contact = new Contact();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ContactDao dao = new ContactDao();
		List<Contact> list = new ArrayList<Contact>();
		list = dao.findAll();
//		if (list.size() == 0) {
//			System.out.println("Array NULL");
//		}
//		String divlist = "<div class='contList'>";
//		for (Contact ct : list) {
//			divlist += "<p>" + ct.toString() + "</p>";
//		}
//		divlist += "</div>";
//		
//		response.setContentType("text/html;charset=UTF-8");
//		response.getWriter().append(divlist);
		
		request.setAttribute("Contact", contact);
		
		String prefix = "/WEB-INF/views/";
		String postfix = ".jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(prefix + "contact" + postfix);
		dispatcher.forward(request, response);
		
		
		response.setContentType("text/html;charset=UTF-8");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
