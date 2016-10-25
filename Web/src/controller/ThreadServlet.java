package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Thread;
import dao.UsersDAO;
import model.Threadadmin;
import model.Users;

@WebServlet("/ThreadServlet")
public class ThreadServlet extends HttpServlet {
	Thread threaddao = new Thread();
	private static final long serialVersionUID = 1L;
       
    public ThreadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		  String command = request.getParameter("command");
	        String url = "";
	        Threadadmin thr = new Threadadmin();
	        HttpSession session = request.getSession();
	        switch (command) {
	            case "insert":
	               
	            thr.setThreadID(new java.util.Date().getTime());
	             thr.setTenThread(request.getParameter("tenthread"));   
	             thr.setNgaytaothread(new Date());  
	           
	              
	                session.setAttribute("thread", thr);
	             
	                url = "/threadadminr.jsp";
	               break;
	           //trường hợp đăng nhập
	            case "update":
	            
//	                users = usersDAO.login(request.getParameter("email"),request.getParameter("pass"));
//	                if (users != null) {
//	                	
//	               	 session.setAttribute("user", users);
//	                    url = "/indexuser.jsp";
//	                
//	                }
//	                else{
//	                    request.setAttribute("error", "Sai mật khẩu hoặc Email");
//	                    System.out.println("Sai mật khẩu hoặc tên đăng nhập");
//	                    url = "/index.jsp";
//	                    //đăng nhập lỗi
//	                }
	                break;
	        }
	        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	        rd.forward(request, response);

	    }
	

}
