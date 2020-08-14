package tp.kits3.livedinner.nghia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieSetServlet
 */
@WebServlet("/cookie/set")
public class CookieSetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieSetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie ck = new Cookie("nameCookie","valueCookie");
		// config cookie
		// cookie session chỉ sử dụng trong thời điểm dc tạo ra
		// cookie be saved in client
		ck.setMaxAge(24*60*60); // thời gian cookie tồn tại, đơn vị là giây
		
		response.addCookie(ck);  // Dùng để tạo cookie
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
