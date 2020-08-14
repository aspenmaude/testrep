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
 * Servlet implementation class CategoryUpdateServlet
 */
@WebServlet("/Category/update")
public class CategoryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ctgid = Integer.parseInt(request.getParameter("ctgid"));
		CategoryDao dao = new CategoryDao();
		Category category = dao.findOne(ctgid);
		if (category == null) {
			System.out.println("ko co");
		}
		else {
			String form = "<div>";
			form += "<form method='post' action='update'>";
			form += "Category id <input type='test' name='ctgid' value='"+ category.getCtgid() + "' readonly/> <br/>";
			form += "Category name <input type='test' name='ctname' value='"+ category.getCtname() + "' /> <br/>";
			form += "Category service <input type='test' name='service' value='" +category.getService() +"' />";
			form += "<input type='submit' value='Update'/>";
			form += "</form></div>";
			
			response.getWriter().append(form);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryDao dao = new CategoryDao();
		Category category = new Category();
		category.setCtgid(Integer.parseInt(request.getParameter("ctgid")));
		category.setCtname(request.getParameter("ctname"));
		if (request.getParameter("service").length() == 1) {
			category.setService(request.getParameter("service"));
			dao.update(category);
		}
		else
		{
			System.out.println("not valid data: must be 1 char");
		}
		
		// passing to servlet, Url (doi url)
		response.sendRedirect("/workShop/Category/list"); // response phan hoi tu server đường dẫn từ thư mục góc
//		response.sendRedirect("list");						// đường dẫn trực tiếp
		
		
	}

}
