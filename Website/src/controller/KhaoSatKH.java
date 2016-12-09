package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiemsDAO;
import dao.KhaoSatKhoaHocDAO;
import model.Diems;
import model.KhaoSatKhoaHocs;


@WebServlet("/khao-sat")
public class KhaoSatKH extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public KhaoSatKH() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="";
		KhaoSatKhoaHocs ks=new KhaoSatKhoaHocs();
		KhaoSatKhoaHocDAO ksDAO=new KhaoSatKhoaHocDAO();
		
		Diems diems=new Diems();
		DiemsDAO diemsDAO=new DiemsDAO();
		float cau1 =Float.parseFloat(request.getParameter("cau1"));
		float cau2 =Float.parseFloat(request.getParameter("cau2")); 
		float cau3 =Float.parseFloat(request.getParameter("cau3")); 
		float cau4 =Float.parseFloat(request.getParameter("cau4")); 
		float cau5 =Float.parseFloat(request.getParameter("cau5")); 
		
		float tong=cau1*5+cau2*5+cau3*5+cau4*5+cau5*5;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String makh=request.getParameter("makh");
		ks.setMaKH(Long.parseLong(makh));
		ks.setUserID(Long.parseLong(request.getParameter("userid")));
		ks.setKQ(tong);
		ks.setNhanXet(request.getParameter("ykienkhaosat"));
		
		ksDAO.InsertKhaoSat(ks);
		diemsDAO.InsertDiem(diems);
		url="/chi-tiet-khoa-hoc-cua-toi?khoahoc="+makh;
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
