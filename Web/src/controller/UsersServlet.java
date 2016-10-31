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
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
		String userid=request.getParameter("UserID");//Lây user hiện tại đang đăng nhập
		Users users = new Users();
		HttpSession session = request.getSession();
		switch (command) {
		//cập nhật thông tin cá nhân
		case "update":
			
			try {
				usersDAO.update(new Users(Long.parseLong(userid),request.getParameter("hoten") ,
						request.getParameter("ngaysinh") ,request.getParameter("gioitinh")
						,request.getParameter("sodienthoai") ));
				url="/thongtincanhan.jsp";
			} catch (NumberFormatException | SQLException e1) {
				
				e1.printStackTrace();
			}
			
			
			break;
		
	//Đăng ký tài khoản
		case "insert":

			users.setUserID(new java.util.Date().getTime());
			users.setUserEmail(request.getParameter("email"));
			users.setUserPass(request.getParameter("pass"));
			users.setUserRole("user");
			users.setUserHoTen(request.getParameter("hovaten"));
			users.setUserNgaySinh(request.getParameter("ngaysinh"));
			users.setUserGioiTinh(request.getParameter("gioitinh"));
			users.setUserSDT(request.getParameter("sodienthoai"));
		//kiểm tra email trùng : true thì k cho thêm tk
			if (usersDAO.checkEmail(request.getParameter("email")) == false) {
				usersDAO.insertUser(users);
				session.setAttribute("user", users);
				url = "/indexuser.jsp";
				
			} else {
				request.setAttribute("trung", "Email đã bị trùng");
				response.getWriter().print("error");
				//url="/index.jsp";
			}

			break;
		// trường hợp đăng nhập
		case "login":
		
			
			Connection connection = DBConnect.getConnection();
			String username = request.getParameter("email"); //get email từ textbox trên giao diện
			String password = request.getParameter("pass");
			PreparedStatement stmt;
			ResultSet rs; // thêm private để giảm dung lượn
			String sql = "select * from users where Email=? and Password=?";
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
						users.setUserID(rs.getLong("UserID"));
						users.setUserEmail(rs.getString("Email"));
						users.setUserPass(rs.getString("Password"));
						users.setUserRole(rs.getString("Role"));
						users.setUserHoTen(rs.getString("HoTen"));
						users.setUserNgaySinh(rs.getString("NgaySinh"));
						users.setUserGioiTinh(rs.getString("GioiTinh"));
						users.setUserSDT(rs.getString("SDT"));
						session.setAttribute("user", users);
						url = "/admin.jsp";
						break;

					case "user":
						/* User user=new User(); */// User trong modal
						users.setUserID(rs.getLong("UserID"));
						users.setUserEmail(rs.getString("Email"));
						users.setUserPass(rs.getString("Password"));
						users.setUserRole(rs.getString("Role"));
						users.setUserHoTen(rs.getString("HoTen"));
						users.setUserNgaySinh(rs.getString("NgaySinh"));
						users.setUserGioiTinh(rs.getString("GioiTinh"));
						users.setUserSDT(rs.getString("SDT"));
						session.setAttribute("user", users);
						url = "/indexuser.jsp";

						break;
						
						
					
						
					}// dong switch

				} // dong if
				else {
					 
					response.setContentType("text/html;charset=UTF-8;");
					/*response.getWriter().println("dang nhap loi roi");*/
					request.setAttribute("error", "Sai mật khẩu hoặc Email!");
					url = "/index.jsp";//chuyển trang đăng nhập và thông báo lỗi

				}
			} // dong try

			catch (Exception e) {
				e.printStackTrace();
			}
			
			break;
			
		
		}
	
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}



}
