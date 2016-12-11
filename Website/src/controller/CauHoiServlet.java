package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CauHoiDAO;
import model.CauHoi;

@WebServlet("/cau-hoi")
public class CauHoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CauHoiDAO cauhoiDAO=new CauHoiDAO();
	public CauHoiServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String url = "";
		CauHoi cauhoi=new CauHoi();
		//KhoaHocs khoahocs=new KhoaHocs();
//		Users users = new Users();
	
		String MaKH = request.getParameter("makh");
		//String MaCauHoi=request.getParameter("macauhoi");
		String Noidung=request.getParameter("noidung");
		String caua=request.getParameter("caua");
		String caub=request.getParameter("caub");
		String cauc=request.getParameter("cauc");
		String caud=request.getParameter("caud");
		String caudung=request.getParameter("caudung");
		System.out.println(caua+caub+cauc+caud+caudung+Noidung+MaKH);
		
			cauhoi.setMaCau(new java.util.Date().getTime());
			cauhoi.setMaKH(Long.parseLong(MaKH));
			
			cauhoi.setNoiDung(Noidung);
			cauhoi.setDanA(caua);
			cauhoi.setDanB(caub);
			cauhoi.setDanC(cauc);
			cauhoi.setDanD(caud);
			cauhoi.setDanDung(caudung);
			
			cauhoiDAO.CauHoi(cauhoi);
			url = "/adDanhSachDeThi.jsp";
		
		

		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
