package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ThongBaoDAO;
import model.ThongBaos;

@WebServlet("/tao-thong-bao")
public class ThongBaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThongBaoServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String makh = request.getParameter("makh");
		String tentb=request.getParameter("tenthongbao");
		String noidungthongbao=request.getParameter("noidungthongbao");
		ThongBaoDAO tbDAO=new ThongBaoDAO();
		ThongBaos tb=new ThongBaos();
		
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			//Date date = new Date();
			
			
			Calendar cal = Calendar.getInstance();
			tb.setMaThongBao(new java.util.Date().getTime());
			tb.setMaKH(Long.parseLong(makh));
			tb.setTenThongBao(tentb);
			tb.setNoiDungThongBao(noidungthongbao);
			tb.setThoiGian(dateFormat.format(cal.getTime()));
			tbDAO.insertThongBao(tb);
			
			response.sendRedirect("ke-hoach-giang-day");

			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
