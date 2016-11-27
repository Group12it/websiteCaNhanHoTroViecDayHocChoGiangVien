package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DangKyKhoaHocDAO;
import model.DangKyKhoaHoc;


@WebServlet("/DangKyKhoaHocServlet")
public class DangKyKhoaHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DangKyKhoaHocServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long userid = Long.parseLong(request.getParameter("userid"));
		long makh= Long.parseLong(request.getParameter("makh"));
		DangKyKhoaHocDAO dkdao=new DangKyKhoaHocDAO();
		DangKyKhoaHoc dangky=new DangKyKhoaHoc();
		dangky.setUserId(userid);
		dangky.setMaKH(makh);
		try {
			dkdao.updateThemVao(dangky);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("adminQuanLyHocVien.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
