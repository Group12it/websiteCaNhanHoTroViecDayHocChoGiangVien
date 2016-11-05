package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connect.DBConnect;
@WebServlet("/UploadServlet")
// @WebServlet(urlPatterns = {"/abc"})

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024
		* 100)
// upload file's size up to 16MB

public class UploadServlet extends HttpServlet {
	// this if directory name where the file will be uploaded and saved

	private static final String SAVE_DIR = "Avartar";
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			try {
				String savePath = "D:/STUDY/WebPrograming/Project/Website/WebContent/Upload" + File.separator + SAVE_DIR;
				File fileSaveDir = new File(savePath);
				if (!fileSaveDir.exists()) {
					fileSaveDir.mkdir();
				}
				String name = request.getParameter("name");
				Part part = request.getPart("file");
				String fileName = extractFileName(part);
				out.println(fileName);
				out.println("\n" + name);
				part.write(savePath + File.separator + fileName);

				/*
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
				Connection con =DBConnect.getConnection();//  DriverManager.getConnection("url", "host -name", "password");
				String sql = "select * from users where Email=? and Password=?";
				PreparedStatement stmt;
				ResultSet rs;
			
				String query = "INSERT INTO name (name,photourl) values (?, ?)";
				/*String que="UPDATE users SET HinhAnh=? where Email=? ";*/
				PreparedStatement pst;

				pst = con.prepareStatement(query);

				pst.setString(1, name);
				

				String filePath = savePath + File.separator + fileName;

				pst.setString(2, filePath);

				pst.executeUpdate();

			} catch (Exception ex) {

				out.println("error" + ex);

			}

		}

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
