package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DangKyKhoaHocDAO;
import dao.KhoaHocsDAO;
import model.DangKyKhoaHoc;

@WebServlet("/dang-ky-khoa-hoc")
public class HocVienDangKyKhoaHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HocVienDangKyKhoaHocServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String url = "";
		long userid = Long.parseLong(request.getParameter("userid"));
		long makh = Long.parseLong(request.getParameter("makh"));
		DangKyKhoaHocDAO dkdao = new DangKyKhoaHocDAO();
		DangKyKhoaHoc dangky = new DangKyKhoaHoc();

		dangky.setUserId(userid);
		dangky.setMaKH(makh);
		dangky.setChophep("0");
			try {
				dkdao.InsertThemVao(dangky);
				session.setAttribute("trangthaidangky", dangky);
				url = "/khoa-hoc-chi-tiet?khoahoc=" + makh;
			} catch (SQLException e) {
				e.getMessage();
			}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
