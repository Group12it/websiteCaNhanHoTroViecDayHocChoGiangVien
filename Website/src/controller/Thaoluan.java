package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietThreadsDAO;
import dao.ThreadsDAO;
import model.ChiTietThreads;
import model.Threads;
import model.Users;

@SuppressWarnings("serial")
@WebServlet("/Thaoluan")
public class Thaoluan extends HttpServlet {
	ThreadsDAO threadsDAO = new ThreadsDAO();
	ChiTietThreadsDAO chitietthreadDao=new ChiTietThreadsDAO();
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
		ChiTietThreads chitietthread=new ChiTietThreads();
		Users users=new Users();
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
			
		case "insertchitiet":
		
			String mathread=request.getParameter("mathread");
			chitietthread.setThreadID(new java.util.Date().getTime());
			chitietthread.setMathread(Long.parseLong(mathread));
			chitietthread.setUserID("1");
			chitietthread.setThoigian("2016-01-01");
			chitietthread.setBinhluan(request.getParameter("binhluan"));
			chitietthreadDao.insertchitietthread(chitietthread);
			
			url = "/thread.jsp";

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
		
		case "insertchitiet":
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println(dateFormat.format(date));

			   //get current date time with Calendar()
			   Calendar cal = Calendar.getInstance();
			
			ChiTietThreads chitietthread=new ChiTietThreads();
			String mathread=request.getParameter("mathread");
			
			chitietthread.setThreadID(new java.util.Date().getTime());
			chitietthread.setMathread(Long.parseLong(mathread));
			chitietthread.setUserID((request.getParameter("userid")));
			chitietthread.setThoigian(dateFormat.format(cal.getTime()));
			chitietthread.setBinhluan(request.getParameter("binhluan"));
			chitietthreadDao.insertchitietthread(chitietthread);
			String t="?thread=";
			String uri="/tham-gia-thao-luan";
			url =uri+t+mathread;// "/thamgiathaoluan.jsp";

			break;

		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	
	public static void main(String[] args) {
		  DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		   //get current date time with Date()
		   Date date = new Date();
		   System.out.println(dateFormat.format(date));

		   //get current date time with Calendar()
		   Calendar cal = Calendar.getInstance();
		   System.out.println();
	}
}
