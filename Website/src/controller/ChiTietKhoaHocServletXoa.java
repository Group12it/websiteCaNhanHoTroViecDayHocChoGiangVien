package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietKhoaHocDAO;

@WebServlet("/xoa-chi-tiet-khoa-hoc")
public class ChiTietKhoaHocServletXoa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChiTietKhoaHocServletXoa() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			String makh = request.getParameter("khoahoc");
			String machitiet = request.getParameter("chitiet");
			ChiTietKhoaHocDAO chitietDAO = new ChiTietKhoaHocDAO();
			chitietDAO.DeleteCTKH(Long.parseLong(machitiet));
			request.setAttribute("xoa", "Thành công!");
			response.sendRedirect("danh-sach-chi-tiet-khoa-hoc?khoahoc=" + makh);
			
		} catch (Exception ex) {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
