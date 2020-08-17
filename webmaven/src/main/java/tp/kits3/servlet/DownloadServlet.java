package tp.kits3.servlet;

import java.awt.List;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/download.do")

public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String filePath = getServletContext().getInitParameter("uploadPath");
		String filename = (String)request.getParameter("fname");
		// open stream for binary
		
		OutputStream out = response.getOutputStream();
		File sendFile = new File(filePath + File.separator + filename);
		
		// add file data in header
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName = " + filename);
		
		// to ready browser
		// read file from Disk
		
		FileInputStream in = new FileInputStream(sendFile);
		byte[] buffer = new byte[1024 * 8]; // byte stream is binary
		while (true) {
			int count = in.read(buffer); // doc file buffer
			if (count == -1 ) {			// end of file
				break;
			}
			out.write(buffer, 0, count); // send to client	
		}
		in.close();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
