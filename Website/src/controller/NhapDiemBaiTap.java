package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiemBaiTapDAO;
import model.DiemBaiTaps;

/**
 * Servlet implementation class NhapDiem
 */
@WebServlet("/cham-diem-bai-tap")
public class NhapDiemBaiTap extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NhapDiemBaiTap() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="";
		DiemBaiTaps diembt=new DiemBaiTaps();
		DiemBaiTapDAO diembtdao=new DiemBaiTapDAO();
		request.setCharacterEncoding("utf-8");
		
		response.setCharacterEncoding("utf-8");
		String makhct=request.getParameter("makhchitiet");
		String mabt=request.getParameter("mabaitap");
		
		System.out.println(mabt+"  "+makhct);
		diembt.setMaBaitap(Long.parseLong(mabt));
		diembt.setUserID(Long.parseLong(request.getParameter("userid")));
		diembt.setDiem(Float.parseFloat(request.getParameter("diem")));
		diembt.setNhanXet(request.getParameter("nhanxet"));
		
		
		diembtdao.InsertDiembt(diembt);
		
		url="/xem-danh-hoc-vien-nop-bai-tap?mabaitap="+mabt+"&khoahocchitiet="+makhct;
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
