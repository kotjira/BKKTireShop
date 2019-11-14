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

@WebServlet("/getcustomerData")
public class EditCustomerData extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;language=\"java\"");

        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        try (PrintWriter out = response.getWriter()) {

            String roll = request.getParameter("id");
            System.out.println(roll);
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
            String dbUser = "bkkgroup";
            String dbPass = "212224236248";
            Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

            PreparedStatement ps = con.prepareStatement("select * from customer where Customer_ID = ?");

            ps.setString(1, roll);

            //out.print("<table width=50% border=1>");
            //out.print("<caption>Result:</caption>");
            ResultSet rs = ps.executeQuery();
            String contextpath = "${pageContext.request.contextPath}";
            /* Printing column names */
            ResultSetMetaData rsmd = rs.getMetaData();

            /* Printing result */
            String id,name,surname,gender,address,nationality,tel,email,postid;
            while (rs.next()) {
                id = rs.getString("Customer_ID");
                System.out.println(id);
                session.setAttribute("ID",id);
                name = rs.getString("Cu_Name");
                System.out.println(name);
                session.setAttribute("Name",name);
                surname = rs.getString("Cu_Name");
                System.out.println(surname);
                session.setAttribute("Surname",rs.getString("Cu_Surname"));
                gender = rs.getString("Cu_Gender");
                System.out.println(gender);
                session.setAttribute("Gender",rs.getString("Cu_Gender"));
                address = rs.getString("Cu_Address");
                System.out.println(address);
                session.setAttribute("Address",rs.getString("Cu_Address"));
                nationality = rs.getString("Cu_Nationality");
                System.out.println(nationality);
                session.setAttribute("Nationality",rs.getString("Cu_Nationality"));
                tel = rs.getString("Cu_Tel");
                System.out.println(tel);
                session.setAttribute("Tel",rs.getString("Cu_Tel"));
                email = rs.getString("Cu_Email");
                System.out.println(email);
                session.setAttribute("Email",rs.getString("Cu_Email"));
                postid = rs.getString("Cu_PostId");
                System.out.println(postid);
                session.setAttribute("PostId",rs.getString("Cu_PostId"));

            }
            RequestDispatcher dispatch = null ;
            ServletContext context = request.getServletContext();
            dispatch = context.getRequestDispatcher("/CustomerData_edit.jsp");
            dispatch.forward(request, response);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

}