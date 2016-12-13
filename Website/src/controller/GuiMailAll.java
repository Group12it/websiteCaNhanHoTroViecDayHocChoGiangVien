package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.DBConnect;
import tools.SendMail;

@WebServlet("/GuiMailAll")
public class GuiMailAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SendMail senmail = new SendMail();

	public GuiMailAll() {
		super();
	}

	@SuppressWarnings("static-access")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String makh = request.getParameter("to");
			System.out.println(makh);
	
			if (makh.equals("1")) {
				String sql = "SELECT GROUP_CONCAT(Email) FROM users";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String ms = rs.getString("GROUP_CONCAT(Email)");
					System.out.println(ms);
					senmail.sendMail("nhom12it@gmail.com", "nhom12spkt", ms, request.getParameter("tieude"),
							request.getParameter("noidung"));

					response.sendRedirect("trang-chu-quan-tri");
				}
			} else {
				String sql = "select GROUP_CONCAT(Email) from users, dangkykhoahoc where users.UserID=dangkykhoahoc.UserID and dangkykhoahoc.MaKH='"
						+ makh + "'";

				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String ms = rs.getString("GROUP_CONCAT(Email)");
					System.out.println(ms);
					senmail.sendMail("nhom12it@gmail.com", "nhom12spkt", ms, request.getParameter("tieude"),
							request.getParameter("noidung"));

					response.sendRedirect("trang-chu-quan-tri");

				}

			}
		} catch (Exception e) {

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

	}

}
