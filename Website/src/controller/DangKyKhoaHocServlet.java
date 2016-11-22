package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DangKyKhoaHocDAO;
import model.DangKyKhoaHoc;

/**
 * Servlet implementation class DangKyKhoaHocServlet
 */
@WebServlet("/DangKyKhoaHocServlet")
public class DangKyKhoaHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyKhoaHocServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		long userid = Long.parseLong(request.getParameter("userid"));
		long makh= Long.parseLong(request.getParameter("makh"));
		DangKyKhoaHocDAO dkdao=new DangKyKhoaHocDAO();
		DangKyKhoaHoc dangky=new DangKyKhoaHoc();
		dangky.setUserId(userid);
		dangky.setMaKH(makh);
		try {
			dkdao.updateThemVao(dangky);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("adminQuanLyHocVien.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
