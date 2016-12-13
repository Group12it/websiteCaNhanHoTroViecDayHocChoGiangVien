package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connect.DBConnect;
import dao.DiemsDAO;
import dao.LamBaiKiemTraDAO;
import model.Diems;
import model.LamBaiKiemTra;
import model.Users;

@WebServlet("/lam-bai-xong")
public class KiemTraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public KiemTraServlet() {
		super();
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection connection = DBConnect.getConnection();
		Diems diem=new Diems();
		DiemsDAO diemDAO=new DiemsDAO();
		String url="";
		LamBaiKiemTraDAO lambaiDAO=new LamBaiKiemTraDAO();
		LamBaiKiemTra lambai=new LamBaiKiemTra();
		PreparedStatement stmt;
		ResultSet rs;
		HttpSession session = request.getSession();
		String userid=request.getParameter("userid");
		String makh=request.getParameter("makh");
		int dem=Integer.parseInt(request.getParameter("dem"));
		String sql = "select * from cauhoi where MaKH='"+makh+"'";
		try {
			stmt = connection.prepareStatement(sql);
			rs = stmt.executeQuery();
			int count=0;
			for (int i = 0; i < dem; i++) {
			if (rs.next()) {
					
					String kq=rs.getString("DADung");
					String ma = rs.getString("MaCH");
					String da=request.getParameter(ma);
					if(da.equals(kq)){
						count+=1;
					}
					
					lambai.setMaKH(Long.parseLong(makh));
					lambai.setMaCH(Long.parseLong(ma));
					lambai.setUserID(Long.parseLong(userid));
					lambai.setDapAn(da);
					
					lambaiDAO.LamBai(lambai);
				
					url="/kiem-tra";
					
				}
			
			}
			
			
			float kq=count*(float)10/dem;
				
			diem.setMaDeThi(Long.parseLong(makh));
			diem.setUserID(Long.parseLong(userid));
			diem.setDiem(String.valueOf(count*(float)10/dem));
			if(kq>=9){
				diem.setNhanXet("Xuất sắc");
			}
			if(kq<9 && kq>=8){
				diem.setNhanXet("Giỏi");
			}
			if(kq<8 &&kq>=6.5){
				diem.setNhanXet("Khá");
			}
			if(kq>=5 &&kq<6.5){
				diem.setNhanXet("Trung bình");
			}
			if(kq<5&&kq>=3.5){
				diem.setNhanXet("Trung bình yếu");
			}
			if(kq<3.5){
				diem.setNhanXet("Yếu");
			}
			diemDAO.InsertDiem(diem);
			
			
			System.out.println(count);
			
			
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
