/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connect.DBConnect;
import dao.UsersDAO;
import model.Users;

@WebServlet("/Home")

public class UsersServlet extends HttpServlet {

	UsersDAO usersDAO = new UsersDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";

		String userid = request.getParameter("UserID");// LÃ¢y user hiá»‡n táº¡i
		Connection connection = DBConnect.getConnection();
		PreparedStatement stmt;
		ResultSet rs;
		Users users = new Users();
		HttpSession session = request.getSession();
		String sql = "select * from users where Email=? and Password=?";
		switch (command) {
		case "changepass":

			String passnhap = request.getParameter("pass");
			String passwordold = request.getParameter("passold");
			String passnew = request.getParameter("passnew");
			String passre = request.getParameter("passre");

			if (passnhap.equals("")) {
				request.setAttribute("mktrong", "Vui lòng nhập mật khẩu cũ của bạn!");
				url = "/doimatkhau.jsp";
			} else {

				if (passnew.equals("")) {
					request.setAttribute("khongmk", "Mật khẩu không được để trống!");
					url = "/doimatkhau.jsp";
				} else {
					if (passnhap.equals(passwordold) == true) {

						if (passnew.equals(passre) == true) {
							try {

								usersDAO.changepassword(
										new Users(Long.parseLong(userid), request.getParameter("passnew")));
								url = "/thongtincanhan.jsp";

							} catch (Exception ex) {
								ex.printStackTrace();
							}
						} else {
							request.setAttribute("khongtrungmk", "Mật khẩu nhập không khớp");
							url = "/doimatkhau.jsp";
						}
					} else {

						request.setAttribute("saimk", "Mật khẩu không đúng");
						url = "/doimatkhau.jsp";
					}
				}
			}
			break;
		case "update":

			try {
				usersDAO.update(new Users(Long.parseLong(userid), request.getParameter("hoten"),
						request.getParameter("ngaysinh"), request.getParameter("gioitinh"),
						request.getParameter("sodienthoai")));
				url = "/thongtincanhan.jsp";
			} catch (NumberFormatException | SQLException e1) {

				e1.printStackTrace();
			}
			break;

		// Dăng ký tài khoản
		case "insert":

			users.setUserID(new java.util.Date().getTime());
			users.setUserEmail(request.getParameter("email"));// requestparameter
			users.setUserPass(request.getParameter("pass"));
			users.setUserRole("user");
			users.setUserHoTen(request.getParameter("hovaten"));
			users.setUserNgaySinh(request.getParameter("ngaysinh"));
			users.setUserGioiTinh(request.getParameter("gioitinh"));
			users.setUserSDT(request.getParameter("sodienthoai"));
			users.setUserHinhAnh("");
			if (usersDAO.checkEmail(request.getParameter("email")) == false) {
				usersDAO.insertUser(users);
				session.setAttribute("user", users);
				url = "/indexuser.jsp";

			} else {
				request.setAttribute("trung", "Email đã bị trùng");
				response.getWriter().print("error");
				// url="/index.jsp";
			}
			break;
		// Đang nhập
		case "login":

			String username = request.getParameter("email"); 
			String password = request.getParameter("pass");

			try {
				stmt = connection.prepareStatement(sql);
				stmt.setString(1, username);
				stmt.setString(2, password);
				rs = stmt.executeQuery();
				if (rs.next()) {
					String usertype = rs.getString("Role");

					users.setUserID(rs.getLong("UserID"));
					users.setUserEmail(rs.getString("Email"));
					users.setUserPass(rs.getString("Password"));
					users.setUserRole(rs.getString("Role"));
					users.setUserHoTen(rs.getString("HoTen"));
					users.setUserNgaySinh(rs.getString("NgaySinh"));
					users.setUserGioiTinh(rs.getString("GioiTinh"));
					users.setUserSDT(rs.getString("SDT"));
					session.setAttribute("role",request.getParameter("Role"));
					session.setAttribute("user", users);
					switch (usertype) {

					case "admin":
						url = "/admin.jsp";
						break;

					case "user":
						url = "/indexuser.jsp";
						break;

					}// dong switch
				} // dong if
				else {
					response.setContentType("text/html;charset=UTF-8;");
					request.setAttribute("error", "Sai mật khẩu hoặc Email!");
					url = "/index.jsp";
				}
			} // end try

			catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "logout":
			session.invalidate();
			url="index.jsp";
			break;
			
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
