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

@WebServlet("/getorderdata")
public class getorderdata extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;language=\"java\"");

        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        try (PrintWriter out = response.getWriter()) {

            String roll = request.getParameter("id");
            String roll2 = request.getParameter("firstname");
            String roll3 = request.getParameter("lastname");

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
            String dbUser = "bkkgroup";
            String dbPass = "212224236248";
            Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);
            PreparedStatement ps = con.prepareStatement("select * from orders where Order_ID = ?");
            ps.setString(1, roll);
            Connection con2 = DriverManager.getConnection(dbURL, dbUser, dbPass);
            PreparedStatement ps2 = con.prepareStatement("select * from customer where Cu_Name = ? and Cu_Surname = ?");
            ps2.setString(1, roll2);
            ps2.setString(2, roll3);
            //out.print("<table width=50% border=1>");
            //out.print("<caption>Result:</caption>");
            ResultSet rs = ps.executeQuery();
            ResultSet rs2 = ps2.executeQuery();
            String contextpath = "${pageContext.request.contextPath}";

            /* Printing result */
            String cus_id,name,surname,day,month,year,idorder,idproduct,brand,quantity,price,total,address,idpost;
            while (rs.next()) {
                cus_id = rs.getString("Customer_ID");
                session.setAttribute("idcustom",cus_id);
                name = rs.getString("Order_name");
                session.setAttribute("fname",name);
                surname = rs.getString("Order_surname");
                session.setAttribute("lname",surname);
                day = rs.getString("Order_date");
                session.setAttribute("day",day);
                month = rs.getString("Order_date");
                session.setAttribute("month",month);
                year = rs.getString("Order_date");
                session.setAttribute("year",year);
                idorder = rs.getString("Order_ID");
                session.setAttribute("idorder",idorder);
                idproduct = rs.getString("Product_ID");
                session.setAttribute("idproduct",idproduct);
                brand = rs.getString("Order_brand");
                session.setAttribute("brand",brand);
                quantity = rs.getString("Quantity");
                session.setAttribute("quantity",quantity);
                price = rs.getString("Price");
                session.setAttribute("price",price);
                total = rs.getString("Total_amount");
                session.setAttribute("total",total);
            }
            while (rs2.next()) {
                address = rs2.getString("Cu_Address");
                session.setAttribute("address",address);
                idpost = rs2.getString("Cu_PostId");
                session.setAttribute("idpost",idpost);
            }
            RequestDispatcher dispatch = null ;
            ServletContext context = request.getServletContext();
            dispatch = context.getRequestDispatcher("/order_attribute.jsp");
            dispatch.forward(request, response);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

}