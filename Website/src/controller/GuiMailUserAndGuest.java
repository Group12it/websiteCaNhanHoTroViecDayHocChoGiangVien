package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.SendMail;


@SuppressWarnings("serial")
@WebServlet("/gui-email")
public class GuiMailUserAndGuest extends HttpServlet {

	SendMail senmail=new SendMail();

    public GuiMailUserAndGuest() {

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
//			Connection con=DBConnect.getConnection();
//		Statement stmt=con.createStatement();
//			String sql="SELECT GROUP_CONCAT(Email)FROM users";
//		ResultSet rs=stmt.executeQuery(sql);
//			while(rs.next()) {		
//				String ms=rs.getString("GROUP_CONCAT(Email)");
				System.out.println(request.getParameter("emailnguoigui"));
				senmail.sendMail(request.getParameter("emailnguoigui"),request.getParameter("matkhauemail"),"nhom12it@gmail.com",request.getParameter("tieude"),request.getParameter("noidung"));
//}
		}
		catch(Exception e){
			
		}
		response.sendRedirect("trang-chu");
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
//			Connection con=DBConnect.getConnection();
//		Statement stmt=con.createStatement();
//			String sql="SELECT GROUP_CONCAT(Email)FROM users";
//		ResultSet rs=stmt.executeQuery(sql);
//			while(rs.next()) {		
//				String ms=rs.getString("GROUP_CONCAT(Email)");
				
			System.out.println(request.getParameter("emailnguoigui"));
				senmail.sendMail(request.getParameter("emailnguoigui"),request.getParameter("matkhauemail"),"nhom12it@gmail.com",request.getParameter("tieude"),request.getParameter("noidung"));
//}
		}
		catch(Exception e){
			
		}
		response.sendRedirect("trang-chu");
	}

}
