package com.user.servlet;



import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            // Retrieve parameters from the request
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String phoneNo = req.getParameter("phoneNo");
            String check = req.getParameter("check");

            // Create a User object with the retrieved data
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhoneNo(phoneNo);
            us.setPassword(password);

            // Get the session
            HttpSession session = req.getSession();

            // Check if the checkbox is checked
            if (check != null) {
                // Perform user registration
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                boolean f2 = dao.checkUser(email);
                
                if(f2) {
                		
                	boolean f= dao.userRegister(us);
                	
                	 if (f) {
                         // Registration success
                         session.setAttribute("succMsg", "Registration Successful");
                         resp.sendRedirect("register.jsp");
                     } else {
                         // Registration failed
                         session.setAttribute("failedMsg", "Something went wrong on the server");
                         resp.sendRedirect("register.jsp");
                     }
                	
                	
                }else {
                	session.setAttribute("failedMsg", "User already exists");
                    resp.sendRedirect("register.jsp");
                	
                }

               
            } else {
                // Checkbox not checked
                session.setAttribute("failedMsg", "Please check the Terms & Conditions");
                resp.sendRedirect("register.jsp");
            }

        } catch (Exception e) {
            // Handle any unexpected exceptions
            e.printStackTrace();
           
        }
    }
}
