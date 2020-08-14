  package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.nghia.dao.TagDao;
import tp.kits3.livedinner.nghia.vo.Tag;

/**
 * Servlet implementation class TagServlet
 * 
 * CRUD ???
 * client insert -> ??....
 * wild tag
 */
@WebServlet("/tag/*")
public class TagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TagServlet() {
        super();
        initConnection();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    private void initConnection() {
    	try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
		try {
			Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/livedinner","root","root123");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext ctx = getServletContext(); // share data all Servlet 
		ctx.getAttribute("menu");
		// @PathVariable
		String[] uri = request.getRequestURI().split("/");
		String command = uri[uri.length - 1];					// use uri <- Spring Framework
		TagDao dao = new TagDao();
		
		
//		String command = request.getParameter("cmd");  //           use cmd
		if ("insert".equals(command)) {												// insert?tgname=name
			Tag tag = new Tag();
//			tag.setTagid(tagid);  // autoincrement
			String tgname = request.getParameter("tgname");
			tag.setTgname(tgname); 
			dao.save(tag); 								// save database
		}
		
		if ("update".equals(command)) {												// insert?tgname=name
			Tag tag = new Tag();
//			tag.setTagid(tagid);  // autoincrement
			String tgid = request.getParameter("tagid");
			int itgid = Integer.parseInt(tgid);
			String tgname = request.getParameter("tgname");
			tag.setTagid(itgid);
			tag.setTgname(tgname); 
			dao.save(tag); 								// save database
		}
		
		if ("list".equals(command)) {
			List<Tag> list = dao.findAll(); // select all
			String table = "<table>";
			
			for (Tag t :  list) {
				int tid = t.getTagid();
				String tname = t.getTgname();
				table += "<tr>" + "<td>" + tid + "</td>" + "<td>" + tname + "</td>"+ "</tr>";
//	 			consider overide tostring method			
//				table += t.toString();
			}
			table += "</table>";
			response.getWriter().println(table);
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
