package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.CategoryDao;
import tp.kits3.livedinner.nghia.dao.ContactDao;
import tp.kits3.livedinner.nghia.vo.Category;
import tp.kits3.livedinner.nghia.vo.Contact;

/**
 * Servlet implementation class ContactUpdateServlet
 */
@WebServlet("/Contact/update")
public class ContactUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int coid = Integer.parseInt(request.getParameter("coid"));
		ContactDao dao = new ContactDao();
		Contact contact = dao.findOne(coid);
		if (contact == null) {
			System.out.println("Not found");
		}
		else {
			
		}
			String form = "<div>";
			form += "<form method='post' action='add'>";
			form += "coid <input type='text' name='coid' value='" + contact.getCoid() + "' readonly /> </br>";
			form += "name <input type='text' name='coname' value='" + contact.getConame() + "' required /> </br>";
			form += "priphone <input type='text' name='priphone' value='" + contact.getPriphone() + "' required /> </br>";
			form += "email <input type='text' name='email' value='" + contact.getEmail() + "' required /> </br>";
			form += "address <input type='text' name='address' value='" + contact.getAddress() + "' required /> </br>";
			form += "unused <input type='text' name='unused' value='" + contact.getUnused() + "' required /> </br>";
			form += "<input type='submit' value='Update'/>";
			form += "</form></div>";
			
			response.getWriter().append(form);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
