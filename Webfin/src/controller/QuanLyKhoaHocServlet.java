package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KhoaHocsDAO;
import model.KhoaHocs;
import model.Users;

@WebServlet("/quan-ly-khoa-hoc")
public class QuanLyKhoaHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
	public QuanLyKhoaHocServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
		String MaKH = request.getParameter("makh");
		KhoaHocs khoahocs=new KhoaHocs();
		Users users = new Users();
		String tenkh=request.getParameter("tenkh");
		String ngaykhaigiang=request.getParameter("ngaykhaigiang");
		String hocphi=request.getParameter("hocphi");
		String khaiquat=request.getParameter("khaiquat");
		String noidung=request.getParameter("noidung");
		String showtester=request.getParameter("showtester");
		switch (command) {
		case "insert":

			try{
			khoahocs.setAdMaKH(new java.util.Date().getTime());
			khoahocs.setAdTenKH(request.getParameter("tenkh"));
			khoahocs.setAdNgayKhaiGiang(request.getParameter("ngaykhaigiang"));
			khoahocs.setAdHocPhi(request.getParameter("hocphi"));
			khoahocs.setAdKhaiQuat(request.getParameter("khaiquat"));
			khoahocs.setAdNoiDung(request.getParameter("noidung"));
			khoahocs.setAdShowtester("");
			khoahocsDAO.insertkhoahoc(khoahocs);
			url = "/quanlykhoahoc.jsp";
			}
			catch(Exception e){
				
			}
			break;
		case "update":
			try {
				khoahocsDAO.updateKhoahoc(new KhoaHocs(Long.parseLong(MaKH),tenkh,ngaykhaigiang,hocphi,khaiquat,noidung,showtester));

				url = "/quanlykhoahoc.jsp";
			} catch (NumberFormatException e1) {

				e1.printStackTrace();
			}
			break;

		case "delete":
			khoahocsDAO.DeleteKhoahoc(Long.parseLong(MaKH));
			url = "/quanlykhoahoc.jsp";

			break;
		}

		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
