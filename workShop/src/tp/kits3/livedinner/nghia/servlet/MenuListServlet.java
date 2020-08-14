package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import tp.kits3.livedinner.nghia.dao.MenuDao;
import tp.kits3.livedinner.nghia.vo.Category;
import tp.kits3.livedinner.nghia.vo.Menu;

/**
 * Servlet implementation class MenuListServlet
 */
@WebServlet("/Menu/list")
public class MenuListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MenuDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuListServlet() {
        super();
        this.dao = new MenuDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Menu menu = new Menu();
//		menu.setMuid(1);
//		menu.setCtgid(1);
//		Gson gson = new Gson();
//		String json = gson.toJson(menu);			// object to string
//		Menu obj = gson.fromJson(json, Menu.class); // string -> object
//		response.getWriter().append(json);
		
//		ServletContext ctx = getServletContext(); // share data all Servlet 
//		ctx.setAttribute("menu", new Menu());
////		ctx.getAttribute("menu"); // like Session
		
//		
//		// browser URL ko đổi
//		request.setAttribute("menuName",new Menu()); // đổi servlet vs category (nơi nhận )
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/menulist.jsp"); //(Category/list) đường dẫn ko đổi chỉ đổi nội dung bên trong link
//		// use jsp, Servlet
//		dispatcher.forward(request, response); 	// Dùng để truyền đi
		// ben categorgetAtribute
		
		response.setContentType("text/html;charset=UTF-8");
		List<Menu> menulist = dao.findAll();
		request.setAttribute( "MenuList", menulist);
		
		// Servlet to Servlet <context-param>
		String prefix = "/WEB-INF/views/";
		String postfix = ".jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(prefix+"menulist"+postfix);
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
