package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.CategoryDao;
import tp.kits3.livedinner.nghia.vo.Category;

/**
 * Servlet implementation class CategoryAddServlet
 */
@WebServlet("/Category/add")
public class CategoryAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Show form  when  insert submit
		String form = "<div>";
		form += "<form method='post' action='add'>";
		form += "Category.name <input type='test' name='ctname' required>";
		form += "Category.service <input type='test' name='service' required>";
		form += "<input type='submit' value='Add'/>";
		form += "</form></div>";
		
		response.getWriter().append(form);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO: save to DB
		CategoryDao dao = new CategoryDao();
		Category category = new Category();
		category.setCtname(request.getParameter("ctname"));
		if (request.getParameter("service").length() == 1) {
			category.setService(request.getParameter("service"));
			dao.save(category);
		}
		else
		{
			System.out.println("not valid data: must be 1 char");
		}
		
		doGet(request, response);
	}

}
