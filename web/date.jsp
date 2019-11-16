<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 25-Oct-19
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con = DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP","bkkgroup","212224236248"); //create connection
        PreparedStatement ps = con.prepareStatement("select * from orders ");
        ResultSet rs = ps.executeQuery();
        String contextpath = "${pageContext.request.contextPath}";
        /* Printing column names */
        ArrayList<String> Day = new ArrayList<String>();
        ArrayList<String> Month = new ArrayList<String>();
        ArrayList<String> Year = new ArrayList<String>();
        while (rs.next()) {
            String Date = rs.getString("Order_date").toString();
            System.out.println("date "+Date);
            String d = "";
            String m = "";
            String y = "";
            int dash = 1;
            int leng = Date.length();
            for (int a = 0; a < leng; a++) {
                char s = Date.charAt(a);

                if (s != '-') {

                    if (dash == 1) {
                        y = y + s;
                    }
                    if (dash == 2) {
                        m = m + s;
                    }
                    if (dash == 3) {
                        d = d + s;
                    }
                } else {
                    if (dash == 1) {
                        System.out.println("Year " + y);
                        dash = dash + 1;
                        Year.add(y);
                    }
                    if (dash == 2) {
                        System.out.println("Month " + m);
                        dash = dash + 1;
                        Month.add(m);
                    }
                    if (dash == 3) {
                        System.out.println("Day " + d);
                        dash = dash + 1;
                        Day.add(d);
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
       %>
<html>
<head>
    <title>Date - วัน เวลา</title>
    <link rel="stylesheet" href="css_date.css">
</head>
<body>
<div class="pageBox">
    <table>
        <tr>
            <td>
                <img src="./img/p2.png" width="390" align="left"/>
                <img src="./img/p1.png" width="600" align="left"/>
            </td>
            <td>
                <h1>Date | วัน เวลา </h1>
                <div class="pageDate" align="center">
                    <h3>วันเเดือนปีที่ทำการแก้ไข บันทึก ข้อมูล</h3>
                    <select name="Day">
                        <option value="">- Day -</option>
                    <%
                        for (int b = 0;b < day.length;b++){
                            out.print("<option value=\""+day[b]+"\">"+day[b]+"</option>");
                    }
                    %>
                    </select>
                    <select name="Month">
                    <option value="">- Month -</option>
                    <%
                        for (int h = 0;h < month.length;h++){
                            out.print("<option value=\""+month[h]+"\">"+month[h]+"</option>");
                        }
                    %>
                </select>
                    <select name="Year">
                    <option value="">- Year -</option>
                        <%
                            for (int p = 0;p < year.length;p++){
                                out.print("<option value=\""+year[p]+"\">"+year[p]+"</option>");
                            }
                                con.close(); //close connection

                            }
                            catch(Exception e)
                            {
                                System.out.println(e);
                            }
                        %>
                </select>
                    <br>
                    <br>
                    <a href="home.jsp"><button class="buttonConfirm"  style="vertical-align:middle"><span>OK</span> </button></a>
                </div >
            </td>
        </tr>
    </table>

</div>

</body>
</html>
