package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.CategoryDao;
import tp.kits3.livedinner.nghia.vo.Category;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/Category/list")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getAttribute("menuName"); // đổi servlet vs menu (nơi gửi)
		CategoryDao dao = new CategoryDao();
		List<Category> list = dao.findAll();
		if (list.size() == 0) {
			System.out.println("have no enstries");
		}
		
		String divList = "<div class='ctgList'>";
		
		for (Category ct : list) {
			divList += "<p><a href='update?ctgid="+ ct.getCtgid()+ "'>" + ct.toString() + "</a></p>";
		}
		
		divList += "</div>";
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().append(divList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
