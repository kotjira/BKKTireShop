package net.bkkgp.web;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/attribute")
public class tire extends HttpServlet {

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

            PreparedStatement ps = con.prepareStatement("select * from tire where Product_ID = ?");

            ps.setString(1, roll);

            //out.print("<table width=50% border=1>");
            //out.print("<caption>Result:</caption>");
            ResultSet rs = ps.executeQuery();
            String contextpath = "${pageContext.request.contextPath}";
            /* Printing column names */
            ResultSetMetaData rsmd = rs.getMetaData();

            /* Printing result */
            while (rs.next()) {
                //out.print("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) +"</td><td>" + rs.getString(8) +"</td><td>" + rs.getString(9) +"</td><td>" + rs.getString(10) +"</td></tr>");
                out.print("<html>");
                out.print("<head>");
                out.print("<title>คุณสมบัติ</title>");
                out.print("<link rel=\"stylesheet\" href=\"css_tire_attribute.css\">");
                out.print("</head>");
                out.print("<body>");
                out.print("<div class=\"pageBox\">");
                out.print("<div class=\"pageH1\"><left><h1>คุณสมบัติ</h1></left></div>");
                out.print("<div class=\"pageH\" align=\"right\">");
                out.print("<table>");
                out.print("<tr>");
                out.print("<a href=\"tire_generation"+rs.getString("Wheel_diameter")+".jsp\"><button class=\"buttonBack\" style=\"vertical-align:middle\"><span>BACK </span> </button></a>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<form action=\"order_add.jsp\" method=\"post\" id=\"form1\">");
                out.print("<input type=\"hidden\" name=\"ides\" value=\""+rs.getString("Product_ID")+"\">");
                out.print("<input type=\"hidden\" name=\"prices\" value=\""+rs.getString("Price")+"\">");
                out.print("<input type=\"hidden\" name=\"brands\" value=\""+rs.getString("Brand")+"\">");
                out.print("<input type=\"hidden\" name=\"generations\" value=\""+rs.getString("Generation")+"\">");
                out.print("</form>");
                out.print("<a href=\"tire.jsp\"><button class=\"buttonAddOrder\" form=\"form1\" style=\"vertical-align:middle\"><span>Add Order</span> </button></a>");
                out.print("</tr>");
                out.print("</table>");
                out.print("</div>");
                out.print("<div class=\"pageGen\" style=\"overflow-y:hidden;height:420px\">");
                out.print("<table>");
                out.print(" <tr>");
                out.print("<td width=\"500px\">");
                out.print("<img src=\"./img/22_MICHELINPilot%20Super%20Sport1%204.png\" height=\"350\"/>");
                out.print("</td>");
                out.print("<td width=\"500px\">");
                out.print("<table bgcolor=\"silver\" >");
                out.print("<td class=\"tableBorder\" width=\"450\">ความกว้างหน้ายาง (มม.)</td> <td bgcolor=\"#eee8aa\" width=\"250\">"+rs.getString("Tire_width")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ความสูงของแก้มยาง (ซีรี่ย์,เปอร์เซนต์)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Height_of_the_sidewall(series)")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">เส้นผ่านศูนย์กลางกระทะล้อ (นิ้ว)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Wheel_diameter")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\" >ความสูงแก้มยาง(มม.)</td> <td bgcolor=\"#eee8aa\" >"+rs.getString("High_sidewall")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ความสูงของยางโดยรวม(มม.)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Height_of_rubber")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ความเร็วสูงสุด (กม./ชม.)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Maximum_speed")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">รับน้ำหนักต่อล้อ (กก.)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Load_per_wheel")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ความกว้างของล้อที่ใช้ทดแทนกันได้ (นิ้ว)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Replaceable_wheel_width")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ความดันลมยางสูงสุดต่อล้อ (ปอนด์/ตร.นิ้ว)</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Maximum_tire_pressure_per_wheel")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ประเภทยาง</td> <td bgcolor=\"#eee8aa\">"+rs.getString("Type_of_tire")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td class=\"tableBorder\">ราคา (ต่อเส้น)</td> <td  bgcolor=\"#e9967a\">"+rs.getString("Price")+"</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td >จำนวนคลังสินค้า</td> <td  bgcolor=\"#8fbc8f\">"+rs.getString("Stock")+"</td>");
                out.print("</tr>");
                out.print("</table>");
                out.print("</td>");
                out.print("</tr>");
                out.print("</table>");
                out.print("</div>");
                out.print("</div>");
                out.print("</body>");
                out.print("</html>");
            }

        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

}