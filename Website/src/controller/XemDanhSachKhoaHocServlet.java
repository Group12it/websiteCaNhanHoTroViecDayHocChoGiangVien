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
 * Servlet implementation class XemDanhSachKhoaHocServlet
 */
@WebServlet("/XemDanhSachKhoaHocServlet")
public class XemDanhSachKhoaHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XemDanhSachKhoaHocServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long makh= Long.parseLong(request.getParameter("makh"));
		String tenkh= (String)request.getParameter("tenkh");
		
		HttpSession session=request.getSession();
		session.setAttribute("makh", makh);
		session.setAttribute("tenkh", tenkh);
		
		request.setAttribute("makh", makh);
		request.setAttribute("tenkh",tenkh );
		
		request.getRequestDispatcher("adminQuanLyHocVienDanhSachKhoaHoc.jsp").forward(request, response);
		
//		response.sendRedirect("adminQuanLyHocVienDanhSachKhoaHoc.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
