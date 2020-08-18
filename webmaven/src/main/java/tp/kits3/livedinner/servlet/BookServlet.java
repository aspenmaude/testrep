package tp.kits3.livedinner.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.dao.bookDao;
import tp.kits3.livedinner.vo.book;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/book")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bookDao dao = new bookDao();
		String action = request.getParameter("act");
		String viewName = "booklist";
		
		if (action.equals("add")) {
			// need form
			viewName = "bookForm";
		}
		else if(action.equals("edit")){
			// need form to edit
			viewName = "bookForm";
			int id = Integer.parseInt(request.getParameter("id"));
			book bok = dao.selectOne(id);
			request.setAttribute("Book", bok);
		}
		
		// trang book.jsp
		String prefix = getServletContext().getInitParameter("prefix");
		String postfix = getServletContext().getInitParameter("postfix");
		request.getRequestDispatcher(prefix + viewName + postfix).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
