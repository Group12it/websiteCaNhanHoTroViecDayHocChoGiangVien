package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.mysql.jdbc.Statement;

import connect.DBConnect;
import dao.Manager_Login;
import model.User;
import model.Users;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection connection = DBConnect.getConnection();
		String username = request.getParameter("email"); // txtUsername.gettext
															// ;//request.getparameter("");
		String password = request.getParameter("pass");// txtPassword.gettext();request.getparameter("");
		String url = "";

		HttpSession session = request.getSession();
		PreparedStatement stmt;
		ResultSet rs; // thêm private để giảm dung lượn
		String sql = "select * from users where Email=? and Password=?";
		User user = new User();
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if (rs.next()) {
				String usertype = rs.getString("Role");
				switch (usertype) {

				case "admin":

					// User trong modal
					user.setUserID(rs.getLong("UserID"));
					user.setUserEmail(rs.getString("Email"));
					user.setUserPass(rs.getString("Password"));
					user.setUserRole(rs.getString("Role"));
					user.setUserHoTen(rs.getString("HoTen"));
					user.setUserNgaySinh(rs.getString("NgaySinh"));
					user.setUserGioiTinh(rs.getString("GioiTinh"));
					user.setUserSDT(rs.getString("SDT"));
					session.setAttribute("admin", user);
					url = "/admin.jsp";
					break;

				case "user":
					/* User user=new User(); */// User trong modal
					user.setUserID(rs.getLong("UserID"));
					user.setUserEmail(rs.getString("Email"));
					user.setUserPass(rs.getString("Password"));
					user.setUserRole(rs.getString("Role"));
					user.setUserHoTen(rs.getString("HoTen"));
					user.setUserNgaySinh(rs.getString("NgaySinh"));
					user.setUserGioiTinh(rs.getString("GioiTinh"));
					user.setUserSDT(rs.getString("SDT"));
					session.setAttribute("admin", user);
					url = "/indexuser.jsp";

					break;
				}// dong switch

			} // dong if
			else {
				 response.setContentType("text/html;charset=UTF-8;");
				 response.getWriter().println("Đăng nhập lỗi");	
				 request.setAttribute("error", "Sai mật khẩu hoặc Email!");
				
				url = "/index.jsp";

			}
		} // dong try

		catch (Exception e) {

		}

	}

}
