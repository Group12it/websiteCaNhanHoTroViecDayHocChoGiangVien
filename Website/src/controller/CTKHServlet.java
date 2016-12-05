package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietKhoaHocDAO;
import model.ChiTietKhoaHoc;

/**
 * Servlet implementation class CTKHServlet
 */
@WebServlet("/them-khoa-hoc-chi-tiet")
public class CTKHServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ChiTietKhoaHocDAO chitietkhoahocDAO = new ChiTietKhoaHocDAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CTKHServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
		// String userid = request.getParameter("UserID");// Lây user hiện
		// tại

		try {

			ChiTietKhoaHoc chitietkhoahoc = new ChiTietKhoaHoc();

			// String sql = "select * from users where Email=? and Password=?";
			chitietkhoahoc.setChitietKhoaHocID(new java.util.Date().getTime());
			chitietkhoahoc.setTenBaiHoc(request.getParameter("tieude"));
			chitietkhoahoc.setNoiDung(request.getParameter("noidung"));
			chitietkhoahoc.setPathBaiGiang(request.getParameter("baigiang"));
			chitietkhoahoc.setPathEbook(request.getParameter("ebook"));
			chitietkhoahoc.setPathVideo(request.getParameter("video"));
			chitietkhoahoc.setPathBaiTap("file");
			chitietkhoahoc.setMakh(Long.parseLong(request.getParameter("makhoc")));

			System.out.println();
			chitietkhoahocDAO.insertKHChitiet(chitietkhoahoc);
			// session.setAttribute("user", users);
			url = "/ke-hoach-giang-day";

		}
		catch (Exception ex)
		{
		}

		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
