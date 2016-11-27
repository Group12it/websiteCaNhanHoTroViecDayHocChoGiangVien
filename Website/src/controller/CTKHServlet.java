package controller;

import java.io.IOException;

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
@WebServlet("/CTKHServlet")
public class CTKHServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ChiTietKhoaHocDAO chitietkhoahocDAO=new ChiTietKhoaHocDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CTKHServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
	//	String userid = request.getParameter("UserID");// Lây user hiện tại
		
		try{
		ChiTietKhoaHoc chitietkhoahoc = new ChiTietKhoaHoc();
		
		// String sql = "select * from users where Email=? and Password=?";
			chitietkhoahoc.setChitietKhoaHocID(new java.util.Date().getTime());
			chitietkhoahoc.setTenBaiHoc(request.getParameter("tieude"));
			chitietkhoahoc.setNoiDung(request.getParameter("noidung"));
			chitietkhoahoc.setPathBaiGiang("baigiang");
			chitietkhoahoc.setPathEbook("ebook");
			chitietkhoahoc.setPathVideo("video");
			chitietkhoahoc.setPathBaiTap("baitap");
			chitietkhoahoc.setMakh(Long.parseLong(request.getParameter("makh")));
			
			chitietkhoahocDAO.insertKHChitiet(chitietkhoahoc);
			// session.setAttribute("user", users);
			url="/xem-bai-giang?khoahoc="+request.getParameter("makh");
			}
		catch(Exception e){
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
