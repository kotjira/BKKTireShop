package net.bkkgp.web;

import net.bkkgp.dao.CustomerrDao;
import net.bkkgp.model.Customerr;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/customerr")
public class CustomerrServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CustomerrDao customerrDao;

    public void init() {
        customerrDao = new CustomerrDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName1");
        String lastName = request.getParameter("lastName1");
        String sex = request.getParameter("sex1");
        String nationality = request.getParameter("nationality1");
        String homeID = request.getParameter("homeID1");
        String post = request.getParameter("post1");
        String phoneMe = request.getParameter("phoneMe1");
        String email = request.getParameter("email1");

        Customerr customerr = new Customerr();
        customerr.setFirstName1(firstName);
        customerr.setLastName1(lastName);
        customerr.setSex1(sex);
        customerr.setNationality1(nationality);
        customerr.setHomeID1(homeID);
        customerr.setPost1(post);
        customerr.setPhoneMe1(phoneMe);
        customerr.setEmail1(email);

System.out.println(nationality);
        try {
            customerrDao.registerCustomerr(customerr);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("customerData.jsp");
    }
}
