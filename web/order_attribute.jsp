<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 12-Nov-19
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>
<%
    String idcustom = session.getAttribute("idcustom").toString();
    String fname = session.getAttribute("fname").toString();
    String lname = session.getAttribute("lname").toString();
    String address = session.getAttribute("address").toString();
    String idpost = session.getAttribute("idpost").toString();
    String day = session.getAttribute("day").toString();
    String month = session.getAttribute("month").toString();
    String year = session.getAttribute("year").toString();
    String idorder = session.getAttribute("idorder").toString();
    String idproduct = session.getAttribute("idproduct").toString();
    String brand = session.getAttribute("brand").toString();
    String quantity = session.getAttribute("quantity").toString();
    String price = session.getAttribute("price").toString();
    String total = session.getAttribute("total").toString();
    String generation2 = null;
             try {

                     DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                     String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
                     String dbUser = "bkkgroup";
                     String dbPass = "212224236248";
                     Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

                     PreparedStatement ps = con.prepareStatement("select * from tire where Product_ID = ?");
                     ps.setString(1,idproduct);
                     ResultSet resultSet = ps.executeQuery();
                 while (resultSet.next()){
                     generation2 = resultSet.getString("Generation");


                 }
                 con.close();


             }catch (Exception e){
                 e.printStackTrace();

             }







    session.setAttribute("idcustom",idcustom);
    session.setAttribute("fname",fname);
    session.setAttribute("lname",lname);
    session.setAttribute("address",address);
    session.setAttribute("idpost",idpost);
    session.setAttribute("day",day);
    session.setAttribute("month",month);
    session.setAttribute("year",year);
    session.setAttribute("idorder",idorder);
    session.setAttribute("idproduct",idproduct);
    session.setAttribute("brand",brand);
    session.setAttribute("quantity",quantity);
    session.setAttribute("price",price);
    session.setAttribute("total",total);
    session.setAttribute("gen2",generation2);

%>

<html>
<head>
    <title>รายละเอียดใบสั่งสินค้า</title>
    <link rel="stylesheet" href="css_order.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script language="JavaScript">
        window.print(){
        parent.framename.print();
        document.frames('iFrameName').print();
        window.self.print();
        print();}
    </script>
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>รายละเอียดใบสั่งสินค้า</h1></left></div>


    <div class="pageOrder" style="overflow-y:scroll;height:420px">
        <table align="center">
            <tr>
                <th width="80px"><p>รหัสลูกค้า</p></th> <td width="150px"><p><%=idcustom%></p></td> <th width="50px"><p>ชือ</p></th> <td width="150px"><p><%=fname%></p></td> <th width="80px"> <p>นามสกุล</p></th > <td width="150px"><p><%=lname%></p></td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <th width="80px"><p>ที่อยู่</p></th> <td width="150px"><p><%=address%></p></td> <th width="80"><p>รหัสไปรษณีย์</p></th> <td width="150px"><p><%=idpost%></p></td> <th width="80"><p>วันจัดส่ง</p></th> <td width="150px"><p><%=day%></p></td>
            </tr>
        </table>
        <br>
        <table bgcolor="#98fb98" align="center" border="1" cellspacing="0" align="center" >
            <tr bgcolor="#32cd32">
                <th width="150px">รหัสใบสั่งสินค้า </th> <th width="150px">รหัสสินค้า</th> <th width="150px">ชื่อสินค้า</th> <th width="50px">จำนวน(ล้อ)</th> <th width="150px">ราคา</th>
            </tr>
            <tr>
                <td><%=idorder%></td> <td><%=idproduct%></td> <td><%=brand%></td> <td><%=quantity%></td> <td><%=price%></td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th align="left" width="150px"><p>ราคารวม VAT 7%</p></th> <td  bgcolor="#ffe4e1"  width="150px"><p><%=total%></p> <th><p>บาท</p></th>
            </tr>
        </table>
        <br>
        <br>
        <table align="center">
            <tr>
                <td>
                    <a href="order_edit.jsp"><button class="buttonEdit" style="vertical-align:middle"><span>Edit </span> </button></a>
                </td>
                <td>
                    <button onClick="JavaScript:window.print();" class="buttonPrint" style="vertical-align: middle"><span>Print </span></button>
                </td>
                <td>
                     <a href="order.jsp"><button class="buttonCancel" style="vertical-align:middle"><span>Cancel </span> </button></a>

                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
