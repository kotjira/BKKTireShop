<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 14-Nov-19
  Time: 7:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    String generation2 = session.getAttribute("gen2").toString();

%>
<%
    String err = "";
    if(session.getAttribute("err") != null){
        err = session.getAttribute("err").toString();
    }
    try
    {


        Class.forName("com.mysql.jdbc.Driver"); //load driver

        Connection con= DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP","bkkgroup","212224236248"); //create connection

        if(request.getParameter("sub2")!=null) //check login button click event not null
        {
            String IdTire = request.getParameter("IdTire");
            String brand1 = request.getParameter("brand1");
            String generation = request.getParameter("generation");
            String NumTire = request.getParameter("NumTire");

            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
                String dbUser = "bkkgroup";
                String dbPass = "212224236248";
                Connection connn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                String INSERT_USERS_SQL2 = ("SELECT * FROM tire where Product_ID = ? and Brand = ? and Generation = ?");
                PreparedStatement pss = connn.prepareStatement(INSERT_USERS_SQL2);
                pss.setString(1,IdTire);
                pss.setString(2,brand1);
                pss.setString(3,generation);
                ResultSet rsss = pss.executeQuery();
                if (rsss.next()){
                    Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                    String INSERT_USERS_SQL = ("UPDATE orders SET Product_ID = ?, Order_brand = ?, Quantity = ? WHERE Order_ID = ?");
                    PreparedStatement ps = conn.prepareStatement(INSERT_USERS_SQL);
                    ps.setString(1,IdTire);
                    ps.setString(2,brand1);
                    ps.setString(3,NumTire);
                    ps.setString(4,idorder);
                    int status = ps.executeUpdate();
                    con.close();
                    response.sendRedirect("order.jsp");
                }
                else{
                    session.setAttribute("err","The data does not match in database !");
                    response.sendRedirect("order_edit.jsp");
                }

            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        }

    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver"); //load driver

Connection con=DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP","bkkgroup","212224236248"); //create connection

if(request.getParameter("id2")!=null) //check login button click event not null
{

String idor = request.getParameter("id2");
// PreparedStatement pstmt=null; //create statement

//pstmt=con.prepareStatement("delete from customer where Customer_ID = ?"); //sql select query
// pstmt.setString(1,ID);

//ResultSet rs=pstmt.executeQuery(); //execute query and store in resultset object rs.
Statement s = null;
s = con.createStatement();
String sql = "delete from orders where Order_ID = '"+idor+"'";
s.execute(sql);
response.sendRedirect("order.jsp"); //after login success redirect to date.jsp page
con.close(); //close connection
}

}
catch(Exception e)
{
System.out.println(e);
}
%>
<html>
<head>
    <title>แก้ไขใบสั่งสินค้า</title>
    <link rel="stylesheet" href="css_order.css" >
</head>
<body>
<div class="pageBox">
   <span class="closebtn"><%=err%></span>
    <div class="pageH1"><left><h1>แก้ไขใบสั่งสินค้า</h1></left></div>

    <div class="pageOrderEdit" style="overflow-y:scroll;height:420px">
        <form name="fm1" id="fm1" action="order_edit.jsp" method="post">
        <table align="center">
            <tr>
                <td width="300px"><p>รหัสสินค้า</p><input type="text" name="IdTire" placeholder="Tire ID" value="<%=idproduct%>"> </td>
            </tr>
            <tr>
                <td width="300px"><p>ยี่ห้อ</p><input type="text" name="brand1" placeholder="ฺBrand" value="<%=brand%>"></td>
                <td width="300px"><p>รุ่น</p><input type="text" name="generation" placeholder="Generation" value="<%=generation2%>"> </td>
            </tr>
            <tr>
                <td width="300px"><p>จำนวน (เส้น)</p><input type="text" name="NumTire" placeholder="Trie Number" value="<%=quantity%>">  </td>
            </tr>
        </table></form>
        <br>
        <table align="center">
            <tr>
                <td>        <a href="order_edit.jsp?id2=<%=idorder%>">
                    <button class="buttonDelete" style="vertical-align:middle" type="submit"><span>Delete </span> </button></a>
                </td>
                <td>
                    <button class="buttonConfirm" style="vertical-align:middle" type="submit" name="sub2" form="fm1" value="confirm"><span>Confirm </span> </button>
                </td>
                <td>
                    <a href="order.jsp"><button class="buttonCancel" style="vertical-align:middle" type="submit"><span>Cancel </span> </button></a>
                </td>
            </tr>
        </table>
    </div>

</div>

</body>
</html>
