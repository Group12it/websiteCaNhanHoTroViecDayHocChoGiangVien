package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ThiTracNghiemDAO;
import model.ThiTracNghiems;

@WebServlet("/lam-bai-thi-trac-nghiem")
public class ThiTracNghiemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ThiTracNghiemServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// Lấy các đáp án từ radio
		String url = "";
		String cau1 = request.getParameter("cau1");
		String cau2 = request.getParameter("cau2");
		String cau3 = request.getParameter("cau3");
		String cau4 = request.getParameter("cau4");
		String cau5 = request.getParameter("cau5");
		
		if(cau1.equals("")){
			cau1="F";
		}
		
		ThiTracNghiemDAO thiDAO = new ThiTracNghiemDAO();
		ThiTracNghiems thi = new ThiTracNghiems();
		thi.setDapAnID(new java.util.Date().getTime());
		thi.setChuoiDapAn(cau1 + cau2 + cau3 + cau4 + cau5);
		thi.setUserID(Long.parseLong(request.getParameter("userid")));
		thi.setDeThiID(Long.parseLong(request.getParameter("makhoahoc")));
		thiDAO.baithihocvien(thi);
		url = "/kiem-tra";
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
		 System.out.println(cau1+cau2+cau3+cau4+cau5);
		 PrintWriter out= response.getWriter();
		 out.println("Câu 1:"+cau1+" Câu 2:"+cau2+" Câu 3:"+cau3+" Câu4:"+cau4+" Câu 5:"+cau5);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public static void main(String[] args) {

		String t = "123";
		String v = "123";
		if (t.equals(v)) {
			System.out.println("Bằng nhau");
		} else {
			System.out.println("không bằng nhau");
		}

	}
}
