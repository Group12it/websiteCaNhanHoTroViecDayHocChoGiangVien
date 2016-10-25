/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UsersDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import model.Users;
import connect.DBConnect;
import tools.MD5;

@WebServlet("/Home")

public class UsersServlet extends HttpServlet {

    UsersDAO usersDAO = new UsersDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
               
            	users.setUserID(new java.util.Date().getTime());
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(request.getParameter("pass"));
                users.setUserRole(false);
                String tt=request.getParameter("email");
                String t="select Email from users";
               if(tt==t)
               {	
            	   url = "/index.jsp";
               }else
               {
                usersDAO.insertUser(users);
                session.setAttribute("user", users);
             
                url = "/indexuser.jsp";
               }break;
           //trường hợp đăng nhập
            case "login":
            
                users = usersDAO.login(request.getParameter("email"),request.getParameter("pass"));
                if (users != null) {
                	
               	 session.setAttribute("user", users);
                    url = "/indexuser.jsp";
                
                }
                else{
                    request.setAttribute("error", "Sai mật khẩu hoặc Email");
                    System.out.println("Sai mật khẩu hoặc tên đăng nhập");
                    url = "/index.jsp";
                    //đăng nhập lỗi
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
