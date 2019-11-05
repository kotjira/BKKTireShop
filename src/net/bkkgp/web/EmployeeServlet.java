package net.bkkgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.bkkgp.dao.EmployeeDao;
import net.bkkgp.model.Employee;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeDao employeeDao;

    public void init() {
        employeeDao = new EmployeeDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String birthDay= request.getParameter("birthDay");
        String birthMonth = request.getParameter("birthMonth");
        String birthYear = request.getParameter("birthYear");
        String sex = request.getParameter("sex");
        String nationality = request.getParameter("nationality");
        String homeID = request.getParameter("homeID");
        String post = request.getParameter("post");
        String phoneMe = request.getParameter("phoneMe");
        String email = request.getParameter("email");
        String education = request.getParameter("education");
        String Position = request.getParameter("Position");
        String userName= request.getParameter("userName");
        String password1= request.getParameter("password1");
        String password2= request.getParameter("password2");

        Employee employee = new Employee();
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setBirthDay(birthDay);
        employee.setBirthMonth(birthMonth);
        employee.setBirthYear(birthYear);
        employee.setSex(sex);
        employee.setNationality(nationality);
        employee.setHomeID(homeID);
        employee.setPost(post);
        employee.setPhoneMe(phoneMe);
        employee.setEmail(email);
        employee.setEducation(education);
        employee.setPosition(Position);
        employee.setUserName(userName);
        employee.setPassword1(password1);
        employee.setPassword2(password2);
System.out.println(birthDay);
        try {
            employeeDao.registerEmployee(employee);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("index.jsp");
    }
}
