

package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.DBConnect;
@SuppressWarnings("serial")
@WebServlet("/tim-khoa-hoc")
public class SearchKhoaHoc extends HttpServlet {
 
	 @SuppressWarnings({ "unchecked", "rawtypes" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html");
	       /* PrintWriter out = response.getWriter();
	        
	        String url = "jdbc:mysql://localhost:3306/";
	        String dbName = "web";
	        String driver = "com.mysql.jdbc.Driver";
	        String userName = "root";
	        String password = "admin";*/
	        Connection conn = null;
	        Statement st;
	        try {
	            
	             conn =DBConnect.getConnection();
	            System.out.println("Connected!");
	            String pid = request.getParameter("pid");
	 
	            ArrayList al = null;
	            ArrayList pid_list = new ArrayList();
	            String query = "select  * from khoahoc where TenKH like '%"+pid+"%' or NgayKhaiGiang like '%"+pid+"%'";
	            		
	 
	            System.out.println("query " + query);
	            st = conn.createStatement();
	            ResultSet rs = st.executeQuery(query);
	 
	            while (rs.next()) {
	                al = new ArrayList();

	                al.add(rs.getString(1));
	                al.add(rs.getString(2));
	                al.add(rs.getString(3));
	                al.add(rs.getString(4));
	                al.add(rs.getString(5));
	                al.add(rs.getString(6));
	                al.add(rs.getString(7));
	                System.out.println("al :: " + al);
	                pid_list.add(al);
	            }
	 
	            request.setAttribute("piList", pid_list);
	            RequestDispatcher view = request.getRequestDispatcher("/quanly-khoa-hoc");
	            view.forward(request, response);
	            conn.close();
	         //   System.out.println("Disconnected!");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	doGet(request, response);

    }
 
      @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}