package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tools.SendMail;

@WebServlet("/GuiMailAll")
public class GuiMailAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SendMail senmail=new SendMail();
	
    public GuiMailAll() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		senmail.sendMail(request.getParameter("to"), request.getParameter("tieude"), request.getParameter("noidung"));
		response.sendRedirect("gui-mail");
		
	}

}
