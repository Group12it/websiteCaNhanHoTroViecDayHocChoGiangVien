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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;
import tools.MD5;

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
                usersDAO.insertUser(users);
                session.setAttribute("user", users);
                url = "/banner.jsp";
                break;
            case "login":
                users = usersDAO.login(request.getParameter("email"),request.getParameter("pass"));
                if (users != null) {
                	
                	if(request.getSession().equals(false)){
                    session.setAttribute("user", users);
                    url = "/indexuser.jsp";
                    }
                	else {
                		session.setAttribute("user", users);
                        url = "/admin.jsp";
                	}
                	
                }else{
                    request.setAttribute("error", "Error email or password!");
                    url = "/index.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
