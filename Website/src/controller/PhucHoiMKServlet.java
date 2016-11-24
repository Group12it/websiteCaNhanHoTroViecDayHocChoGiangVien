package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.DBConnect;
import tools.*;
import dao.*;

@WebServlet("/PhucHoiMKServlet")
public class PhucHoiMKServlet extends HttpServlet {
	UsersDAO usersDAO = new UsersDAO();
	SendMail senmail = new SendMail();
	private static final long serialVersionUID = 1L;

	public PhucHoiMKServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String url="";
		if (usersDAO.checkEmail(email)) {
			try {
				Connection con = DBConnect.getConnection();
				Statement stmt = con.createStatement();
				String sql = "SELECT Password from users where Email='" + email + "'";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String ms = rs.getString("Password");
					
					// System.out.println(ms);
					
					SendMail.sendMail(email, "Mat khau cua ban la:", ms);
					url="/index.jsp";
				}
			} catch (Exception e) {

			}
		} else {
			request.setAttribute("error", "Địa chỉ mail không đúng!");
			url="/quenmatkhau.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
		
		
	}

}
