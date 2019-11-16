package net.bkkgp.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/UpdateCustomerData")
public class UpdateCustomerData extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;language=\"java\"");

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        try (PrintWriter out = response.getWriter()) {
            String ID = request.getParameter("ides");
            int IntID = Integer.parseInt(ID);
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String sex = request.getParameter("sex");
            String nationality = request.getParameter("nationality");
            String homeID = request.getParameter("homeID");
            String post = request.getParameter("post");
            String phoneMe = request.getParameter("phoneMe");
            String email = request.getParameter("email");
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
            String dbUser = "bkkgroup";
            String dbPass = "212224236248";
            Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

            PreparedStatement ps = con.prepareStatement("UPDATE customer SET Cu_Name=?,Cu_Surname=?,Cu_Gender=?,Cu_nationality=?,Cu_Address=?,Cu_PostId=?,Cu_tel=?,Cu_email=? WHERE Customer_ID=?");

            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, sex);
            ps.setString(4, nationality);
            ps.setString(5, homeID);
            ps.setString(6, post);
            ps.setString(7, phoneMe);
            ps.setString(8, email);
            ps.setInt(9, IntID);

            //out.print("<table width=50% border=1>");
            //out.print("<caption>Result:</caption>");
            int status = ps.executeUpdate();
            String contextpath = "${pageContext.request.contextPath}";
            if (status != 1){
                System.out.println("Wrong password!");
            }
            RequestDispatcher dispatch = null ;
            ServletContext context = request.getServletContext();
            dispatch = context.getRequestDispatcher("/customerData.jsp");
            dispatch.forward(request, response);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

}