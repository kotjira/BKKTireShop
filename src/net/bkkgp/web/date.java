package net.bkkgp.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/attribute")
public class date extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;language=\"java\"");

        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        try (PrintWriter out = response.getWriter()) {

            String roll = request.getParameter("brand");
            System.out.println(roll);
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
            String dbUser = "bkkgroup";
            String dbPass = "212224236248";
            Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

            PreparedStatement ps = con.prepareStatement("select * from orders where Order_date = ?");

            ps.setString(1, roll);

            //out.print("<table width=50% border=1>");
            //out.print("<caption>Result:</caption>");
            ResultSet rs = ps.executeQuery();
            String contextpath = "${pageContext.request.contextPath}";
            /* Printing column names */
            ResultSetMetaData rsmd = rs.getMetaData();
            ArrayList<String> Day = new ArrayList<String>();
            ArrayList<String> Month = new ArrayList<String>();
            ArrayList<String> Year = new ArrayList<String>();
            while (rs.next()) {
                String Date = rs.getString("Order_date").toString();
                String d = "";
                String m = "";
                String y = "";
                int dash = 1;
                int leng = Date.length();
                for (int a = 0; a < leng; a++) {
                    char s = Date.charAt(a);

                    if (s != '-') {

                        if(dash == 1){
                            y = y+s;
                        }
                        if(dash == 2){
                            m = m+s;
                        }
                        if(dash == 3){
                            d = d+s;
                        }
                    }else {
                        if (dash == 1){
                            System.out.println("Day "+d);
                            dash = dash+1;
                            Day.add(d);
                        }
                        if (dash == 2){
                            System.out.println("Month "+m);
                            dash = dash+1;
                            Month.add(m);
                        }
                        if (dash == 3){
                            System.out.println("Year "+y);
                            dash = dash+1;
                            Year.add(y);
                        }
                    }

                }

            }
            String[] day = new String[Day.size()];
            String[] month = new String[Month.size()];
            String[] year = new String[Year.size()];
            day = Day.toArray(day);
            month = Month.toArray(month);
            year = Year.toArray(year);

            /* Printing result */
            out.print("<html>");
            out.print("<head>");
            out.print("<title>Date - วัน เวลา</title>");
            out.print("<link rel=\"stylesheet\" href=\"css_date.css\">");
            out.print("</head>");
            out.print("<body>");
            out.print("<div class=\"pageBox\">");
            out.print("<table>");
            out.print("<tr>");
            out.print("<td>");
            out.print("<img src=\"./img/p2.png\" width=\"390\" align=\"left\"/>");
            out.print("<img src=\"./img/p1.png\" width=\"600\" align=\"left\"/>");
            out.print("</td>");
            out.print("<td>");
            out.print("<h1>Date | วัน เวลา </h1>");
            out.print("<div class=\"pageDate\" align=\"center\">");
            out.print("<h3>วันเเดือนปีที่ทำการแก้ไข บันทึก ข้อมูล</h3>");
            out.print("<select name=\"Day\">");
            out.print("<option value=\"\">- Day -</option>");
            for (int b = 0;b < day.length;b++){
                out.print("<option value=\""+day[b]+"\">"+day[b]+"</option>");
            }
            out.print("</select><select name=\"Month\">");
            out.print("<option value=\"\">- Month -</option>");
            for (int h = 0;h < month.length;h++){
                out.print("<option value=\""+month[h]+"\">"+month[h]+"</option>");
            }
            out.print("</select><select name=\"Year\">");
            out.print("<option value=\"\">- Year -</option>");
            for (int p = 0;p < year.length;p++){
                out.print("<option value=\""+year[p]+"\">"+year[p]+"</option>");
            }
            out.print("</select>");
            out.print("<br>");
            out.print("<br>");
            out.print("<a href=\"home.jsp\"><button class=\"buttonConfirm\"  style=\"vertical-align:middle\"><span>OK</span> </button></a>");
            out.print("</div >");
            out.print("</td>");
            out.print("</tr>");
            out.print("</table>");
            out.print("</div>");
            out.print("</body>");
            out.print("</html>");


        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

}