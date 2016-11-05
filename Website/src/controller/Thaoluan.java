package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ThreadsDAO;
import model.Threads;

@SuppressWarnings("serial")
@WebServlet("/Thaoluan")
public class Thaoluan extends HttpServlet {
	ThreadsDAO threadsDAO = new ThreadsDAO();

	public Thaoluan() {
		super();

	}

@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
		String MaThread = request.getParameter("MaThread");
		Threads threads = new Threads();

		switch (command) {
		case "insert":

			threads.setThreadID(new java.util.Date().getTime());
			threads.setTenThread(request.getParameter("tenthread"));
			threads.setNgayThread(request.getParameter("ngaytao"));
			threadsDAO.insertUser(threads);
			url = "/threadadmin.jsp";

			break;
		case "update":
			try {
				threadsDAO.updateThread(new Threads(Long.parseLong(MaThread), request.getParameter("tenthread"),
						request.getParameter("ngaytao")));

				url = "/threadadmin.jsp";
			} catch (NumberFormatException e1) {

				e1.printStackTrace();
			}
			break;

		case "delete":
			threadsDAO.DeleteThread(Long.parseLong(MaThread));
			url="/threadadmin.jsp";

			break;
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
		String threadid = request.getParameter("MaThread");
		Threads threads = new Threads();

		switch (command) {
		case "insert":

			threads.setThreadID(new java.util.Date().getTime());
			threads.setTenThread(request.getParameter("tenthread"));
			threads.setNgayThread(request.getParameter("ngaytao"));
			threadsDAO.insertUser(threads);
			url = "/threadadmin.jsp";

			break;
		case "update":
			try {
				threadsDAO.updateThread(new Threads(Long.parseLong(threadid), request.getParameter("tenthread"),
						request.getParameter("ngaytao")));

				url = "/threadadmin.jsp";
			} catch (NumberFormatException e1) {

				e1.printStackTrace();
			}
			break;

		case "delete":
			String id = request.getParameter("MaThread");

			break;

		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
