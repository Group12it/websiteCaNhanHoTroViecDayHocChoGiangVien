package controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import connect.DBConnect;
import dao.UsersDAO;

@SuppressWarnings("serial")
@WebServlet("/dethiservlet")
// @WebServlet(urlPatterns = {"/abc"})

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024
		* 100)
// upload file's size up to 16MB

public class DeThiServlet extends HttpServlet {
	// this if directory name where the file will be uploaded and saved
	UsersDAO usersDAO = new UsersDAO();
	@SuppressWarnings("unused")
	private static final String SAVE_DIR = "Avartar";
	
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

	private static final String UPLOAD_DIRECTORY = "fileUpload";
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String TenDT = request.getParameter("tendethi");
		String MaKH = request.getParameter("mhoc");
		
		String url = "";
		try {
			
			
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// sets memory threshold - beyond which files are stored in disk
			factory.setSizeThreshold(MEMORY_THRESHOLD);
			// sets temporary location to store files
			factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

			ServletFileUpload upload = new ServletFileUpload(factory);

			// sets maximum size of upload file
			upload.setFileSizeMax(MAX_FILE_SIZE);

			// sets maximum size of request (include file + form data)
			upload.setSizeMax(MAX_REQUEST_SIZE);

			// constructs the directory path to store upload file
			// this path is relative to application's directory

			// Ãƒâ€žÃ¯Â¿Â½ÃƒÂ¡Ã‚Â»Ã†â€™ upload lÃƒÆ’Ã‚Âªn host internet 
			String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
			
			// creates the directory if it does not exist
			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			
			
			Part part = request.getPart("file");
			String fileName = extractFileName(part);
		
			url = "/admindethitracnghiem.jsp";
			part.write(uploadPath + File.separator + fileName);
			request.setAttribute("msg",fileName);
			
			Connection con = DBConnect.getConnection();// DriverManager.getConnection("url",
														// "host -name",
											// "password");
			@SuppressWarnings("unused")
			String path = request.getParameter("path");
		
			//String sql = "UPDATE users SET HinhAnh=? WHERE UserID=?";
			String sql ="Insert into dethi (MaDeThi,TenDeThi,MaKH,File) values(?,?,?,?)";
			String filePath = fileName; // savePath + File.separator +
										// fileName;// bở vì nó lưu luôn
										// Đường dẫn local

			PreparedStatement ps = con.prepareCall(sql);
			ps.setLong(1, new java.util.Date().getTime());
			ps.setString(2, TenDT);
			ps.setLong(3,Long.parseLong(MaKH));
			ps.setString(4, filePath);

			ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	// the extractFileName() is method used to extract the file name

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}

	@Override

	protected void doGet(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {

		processRequest(request, response);

	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {

		processRequest(request, response);

	}

	@Override

	public String getServletInfo() {

		return "Short description";

	}

}