package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ThreadDAO;
import model.Threadadmin;

@WebServlet("/thread")
public class ThreadServlet extends HttpServlet {
	ThreadDAO threaddao = new ThreadDAO();
	private static final long serialVersionUID = 1L;
       
    public ThreadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			
	        String url = "";
	        Threadadmin thread = new Threadadmin();
	    
	        String command = request.getParameter("command");
			
			HttpSession session = request.getSession();
	        switch (command) {
	            case "insert":
	               
	            	
		    		 thread.setThreadID(new java.util.Date().getTime());
		             thread.setTenThread(request.getParameter("tenthread"));   
		             thread.setNgaytaothread(request.getParameter("thoigian")); 
	            
		             threaddao.InsertThread(thread);
	    				session.setAttribute("thread", thread);
	    				url = "/threadadmin.jsp";
	    	
	               break;
	     
	            case "update":
	           
	                break;
	        }
	        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	        rd.forward(request, response);

	    }
	

}
