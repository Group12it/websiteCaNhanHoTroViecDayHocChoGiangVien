package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiemsDAO;
import model.Diems;

/**
 * Servlet implementation class NhapDiem
 */
@WebServlet("/cham-diem")
public class NhapDiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NhapDiem() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="";
		Diems diems=new Diems();
		DiemsDAO diemsDAO=new DiemsDAO();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String makh=request.getParameter("makh");
		String mades=request.getParameter("made");
		diems.setMaDeThi(Long.parseLong(mades));
		diems.setUserID(Long.parseLong(request.getParameter("userid")));
		//diems.setDiem(Long.parseLong(request.getParameter("diem")));
		diems.setNhanXet(request.getParameter("nhanxet"));
		
		diemsDAO.InsertDiem(diems);
		url="/bai-nop-cua-hoc-vien?madethi="+mades+"&makh="+makh;
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
