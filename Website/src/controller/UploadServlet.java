package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connect.DBConnect;
import dao.UsersDAO;
import model.Users;

@SuppressWarnings("serial")
@WebServlet("/edit-profile")
// @WebServlet(urlPatterns = {"/abc"})

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024
		* 100)
// upload file's size up to 16MB

public class UploadServlet extends HttpServlet {
	// this if directory name where the file will be uploaded and saved
	UsersDAO usersDAO = new UsersDAO();
	private static final String SAVE_DIR = "Avartar";

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = "";
		try {
			// đường dẫn đến thư mục lưu, nếu up lên host sẽ phải thay đổi!
			String savePath = "D:/STUDY/WebPrograming/Project/Website/WebContent/Upload" + File.separator + SAVE_DIR;
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			String name = request.getParameter("Userid");
			Part part = request.getPart("file");
			String fileName = extractFileName(part);
			// out.println(fileName);
			// out.println("\n" + name);
			// out.println("\n" + name);
			url = "/capnhatthongtin.jsp";
			part.write(savePath + File.separator + fileName);
			request.setAttribute("msg",fileName);
			
			/*
			 * th
			 * 
			 * You need this loop if you submitted more than one file
			 * 
			 * for (Part part : request.getParts()) {
			 * 
			 * String fileName = extractFileName(part);
			 * 
			 * part.write(savePath + File.separator + fileName);
			 * 
			 * }
			 */

			Connection con = DBConnect.getConnection();// DriverManager.getConnection("url",
														// "host -name",
														// "password");
			String path = request.getParameter("path");
			// String query = "INSERT INTO name (name,photourl) values (?,
			// ?)";
			String query = "update name set photourl=? where name=?";
			String sql = "UPDATE users SET HinhAnh=? WHERE UserID=?";
			String filePath = fileName; // savePath + File.separator +
										// fileName;// bở vì nó lưu luôn
										// Đường dẫn local

			PreparedStatement ps = con.prepareCall(sql);
			// PreparedStatement pst;
			// pst = con.prepareStatement(sql);
			ps.setString(2, name);
			ps.setString(1, filePath);

			ps.executeUpdate();

			// usersDAO.capnhathinhanh(new
			// Users(Long.parseLong(userid),filePath));

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

	}// </editor-fold>

}
