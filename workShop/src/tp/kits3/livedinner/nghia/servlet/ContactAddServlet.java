package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.ContactDao;
import tp.kits3.livedinner.nghia.vo.Contact;

/**
 * Servlet implementation class ContactAddServlet
 */
@WebServlet("/Contact/add")
public class ContactAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form = "<div>";
		form += "<form method='post' action='add'>";
		form += "name <input type='text' name='coname' required /> </br>";
		form += "priphone <input type='text' name='priphone' required /> </br>";
		form += "email <input type='text' name='email' required /> </br>";
		form += "address <input type='text' name='address' required /> </br>";
		form += "unused <input type='text' placeholder='please input 0 or 1' name='unused' required /></br>";
		form += "<input type='submit' value='Add'/>";
		form += "</form></div>";
		
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().append(form);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContactDao dao = new ContactDao();
		Contact contact = new  Contact();
		
		contact.setConame(request.getParameter("coname"));
		contact.setPriphone(request.getParameter("priphone"));
		contact.setEmail(request.getParameter("email"));
		contact.setAddress(request.getParameter("address"));
		contact.setUnused(Boolean.parseBoolean(request.getParameter("unused")));
		boolean unused = contact.getUnused();

		if (unused == true || unused == false ) {
			dao.save(contact);
		}
		else {
			System.out.println("unused just 0 or 1");
		}
			
		doGet(request, response);
	}

}
