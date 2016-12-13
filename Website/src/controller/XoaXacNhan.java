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

/**
 * Servlet implementation class XoaXacNhan
 */
@WebServlet("/XoaXacNhan")
public class XoaXacNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaXacNhan() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	long userid = Long.parseLong(request.getParameter("userid"));
	long makh= Long.parseLong(request.getParameter("makh"));
	DangKyKhoaHocDAO dkdao=new DangKyKhoaHocDAO();
	DangKyKhoaHoc dangky=new DangKyKhoaHoc();
	dangky.setUserId(userid);
	dangky.setMaKH(makh);
	try {
		dkdao.deleteDangKy(dangky);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	request.setAttribute("makh", makh);
	request.getRequestDispatcher("adminQuanLyHocVien.jsp").forward(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}

}
