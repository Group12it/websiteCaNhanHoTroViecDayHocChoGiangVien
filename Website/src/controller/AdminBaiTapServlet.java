package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBaiTapDAO;
import dao.DangKyKhoaHocDAO;
import dao.DiemsDAO;
import model.AdminBaiTap;
import model.DangKyKhoaHoc;
import model.Diems;

/**
 * Servlet implementation class adminchambaitracnhiemServlet
 */
@WebServlet("/AdminBaiTapServlet")
public class AdminBaiTapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminBaiTapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		long machitietkh = Long.parseLong(request.getParameter("machitietkh"));
		
		String ten=(String)request.getParameter("tenbaitap");
		String noidung=(String)request.getParameter("yeucaubaitap");
		String hannop=(String)request.getParameter("ngayketthuc");
		String gionop=(String)request.getParameter("thoigianketthuc");
		
		AdminBaiTapDAO adminbtdao=new AdminBaiTapDAO();
		AdminBaiTap adminbaitap=new AdminBaiTap();
		adminbaitap.setIDBaiTap(new java.util.Date().getTime());
		adminbaitap.setTenBaiTap(ten);
		adminbaitap.setNoiDungBaiTap(noidung);
		adminbaitap.setHanNop(hannop);
		adminbaitap.setGioNop(gionop);
		adminbaitap.setMaChiTietKH(machitietkh);
		
		adminbtdao.insertAdminBaiTap(adminbaitap);
		
		response.sendRedirect("adminbaitap.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
