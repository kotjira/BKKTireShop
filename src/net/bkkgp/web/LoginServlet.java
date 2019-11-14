package net.bkkgp.web;

import net.bkkgp.dao.LoginDao;
import net.bkkgp.model.Employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao LoginDao;

    public void init() {
        LoginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String userName= request.getParameter("userName");
        String password1= request.getParameter("Password1");

        Employee employee = new Employee();

        employee.setUserName(userName);
        employee.setPassword1(password1);
        ServletContext context = request.getServletContext();
        RequestDispatcher dispatch =null;
        try {
            int result =  LoginDao.loginEmployee(userName,password1);
            if (result == 0){
                request.setAttribute("You try again!","errorInNameMsg");
                System.out.println("result "+result);
                dispatch = context.getRequestDispatcher("/index.jsp");
                dispatch.forward(request, response);
            }else {
                dispatch = context.getRequestDispatcher("/date.jsp");
                System.out.println("result yes");
                dispatch.forward(request, response);
            }
        } catch (Exception e) {

            e.printStackTrace();
        }


    }
}
