<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 25-Oct-19
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<String> OrderID = new ArrayList<String>();
    ArrayList<String> Firstname = new ArrayList<String>();
    ArrayList<String> Lastname = new ArrayList<String>();
    ArrayList<String> Date = new ArrayList<String>();

    ResultSet resultSet = null;
    try {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
        String dbUser = "bkkgroup";
        String dbPass = "212224236248";
        Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

        PreparedStatement ps = con.prepareStatement("select * from orders");

        resultSet = ps.executeQuery();

        while (resultSet.next()){
            OrderID.add(resultSet.getString("Order_ID"));
            Firstname.add(resultSet.getString("Order_Name"));
            Lastname.add(resultSet.getString("Order_surname"));
            Date.add(resultSet.getString("Order_date"));

        }
    }catch (Exception e){
        e.printStackTrace();
    }
    String[] orderid = new String[OrderID.size()];
    String[] firstname = new String[Firstname.size()];
    String[] lastname = new String[Lastname.size()];
    String[] date = new String[Date.size()];

    orderid = OrderID.toArray(orderid);
    firstname = Firstname.toArray(firstname);
    lastname = Lastname.toArray(lastname);
    date = Date.toArray(date);

%>
<html>
<head>
    <title>Order - ใบสั่งสินค้า</title>
    <link rel="stylesheet" href="css_order.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>ใบสั่งสินค้า</h1></left></div>
    <div class="pageH" align="right"> <a href="home.jsp"><button class="buttonBack" style="vertical-align:middle"><span>BACK </span> </button></a>
    </div>

    <div class="pageOrder" style="overflow-y:scroll;height:420px">
        <table bgcolor="#fff0f5" border="1" cellspacing="0" align="center">
            <tr bgcolor="#f08080">
                <th width="150px">รหัสใบสั่งสินค้า</th><th width="150px">ชื่อ</th><th width="150px">นามสกุล</th><th width="150px">วันที่สั่ง</th> <th width="150px" align="center">รายละเอียด</th>
            </tr>
            <%
                for(int i=0 ; i<orderid.length ; i++){
                    response.setContentType("text/html");
                    out.print("<tr>");
                    out.print(" <td align=\"center\"> "+orderid[i]+" </td> <td align=\"center\"> "+firstname[i]+"</td> <td align=\"center\"> "+lastname[i]+"</td> <td align=\"center\"> "+date[i]+ "</td> <td align=\"center\"><form action=\"getorderdata\" method=\"get\"><input type=\"hidden\" name=\"id\" value=\""+orderid[i]+"\"><input type=\"hidden\" name=\"firstname\" value=\""+firstname[i]+"\"><input type=\"hidden\" name=\"lastname\" value=\""+lastname[i]+"\"><button class=\"fa fa-book\" aria-hidden=\"true\" style=\"background-color:#f5f5dc;border-width:0px;\" type=\"submit\"> </button> </td></form></td>");
                    out.print("</tr>");
                }
            %>

            <tr>
                <td></td><td></td><td></td><td></td><td align="center"><a href="tire.jsp"> <i class="fa fa-plus-circle" aria-hidden="true"></i></a></td>
            </tr>
            <tr>

            </tr>
        </table>
    </div>

</div>
</body>
</html>
