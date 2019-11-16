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
                <th width="200px">รหัสใบสั่งสินค้า</th><th width="150px">ชื่อ</th><th width="150px">นามสกุล</th><th width="150px">วันที่สั่ง</th> <th width="150px" align="center">รายละเอียด</th>
            </tr>
            <tr>
                <td> OR000001</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000002</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000003</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000004</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000005</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000006</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000007</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000008</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000009</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000010</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000011</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000012</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000013</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000014</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000015</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td> OR000016</td> <td>บุษกร</td> <td>ศุภกิจอำนวย</td> <td>12/11/2019</td> <td align="center"><a href="order_attribute.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td></td><td></td><td></td><td></td><td align="center"><a href="order_add.jsp"> <i class="fa fa-plus-circle" aria-hidden="true"></i></a></td>
            </tr>
            <tr>

            </tr>
        </table>
    </div>

</div>
</body>
</html>
