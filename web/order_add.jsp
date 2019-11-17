<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 12-Nov-19
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ides = request.getParameter("ides");
    String prices = request.getParameter("prices");
    String brands = request.getParameter("brands");
    String generations = request.getParameter("generations");
    ArrayList<String> CustomerID = new ArrayList<String>();
    ArrayList<String> Name = new ArrayList<String>();
    ArrayList<String> LastName = new ArrayList<String>();
    ArrayList<String> ProductID = new ArrayList<String>();
    ArrayList<String> Price = new ArrayList<String>();
    ArrayList<String> Brand = new ArrayList<String>();
    ArrayList<String> Generation = new ArrayList<String>();
    ResultSet resultSet = null;
    try {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
        String dbUser = "bkkgroup";
        String dbPass = "212224236248";
        Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

        PreparedStatement ps = con.prepareStatement("select * from customer");
        PreparedStatement ps2 = con.prepareStatement("select * from tire");
        resultSet = ps.executeQuery();
        ResultSet resultSet2 = ps2.executeQuery();
        while (resultSet.next()){
            CustomerID.add(resultSet.getString("Customer_ID"));
            Name.add(resultSet.getString("Cu_Name"));
            LastName.add(resultSet.getString("Cu_Surname"));

        }
        while (resultSet2.next()){
            ProductID.add(resultSet2.getString("Product_ID"));
            Price.add(resultSet2.getString("Price"));
            Brand.add(resultSet2.getString("Brand"));
            Generation.add(resultSet2.getString("Generation"));
        }

    }catch (Exception e){
        e.printStackTrace();
    }
    String[] customerid = new String[CustomerID.size()];
    String[] name = new String[Name.size()];
    String[] lastname = new String[Name.size()];
    String[] productid = new String[ProductID.size()];
    String[] price = new String[Price.size()];
    String[] brand = new String[Brand.size()];
    String[] generation = new String[Generation.size()];

    customerid = CustomerID.toArray(customerid);
    name = Name.toArray(name);
    lastname = LastName.toArray(lastname);
    productid = ProductID.toArray(productid);
    price = Price.toArray(price);
    brand = Brand.toArray(brand);
    generation = Generation.toArray(generation);

%>
<html>
<head>
    <title>เพิ่มใบสั่งสินค้า</title>
    <link rel="stylesheet" href="css_order.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script type="text/javascript" >
        function CreateTextbox(){
            var i = 1;
            createTextbox.innerHTML = createTextbox.innerHTML +"<input type=text name='mytxt'+ i/>" +
                "<table>\n" +
                "            <tr>\n" +
                "                <td width=\"300px\"><p>รหัสสินค้า</p><input type=\"text\" name=\"IdTire\" placeholder=\"Tire ID\"> </td>\n" +
                "                <td width=\"300px\"><p>จำนวน (เส้น)</p><input type=\"text\" name=\"NumTire\" placeholder=\"Trie Number\"> </td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td> <p>ราคา(ต่อเส้น)</p><SELECT name=\"price\" required><p><font size=\"3\" color=\"red\">${errorInSex}</font></p>\n" +
                "                    <OPTION SELECTED value=\"\">price</OPTION>\n" +
                "                    <OPTION VALUE=3000>3000</OPTION>\n" +
                "                    <OPTION VALUE=3500>3500</OPTION>\n" +
                "                    <OPTION VALUE=3600>3600</OPTION>\n" +
                "                </SELECT>\n" +
                "                </td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td> <p>ยี่ห้อ</p><SELECT name=\"brand\" required><p><font size=\"3\" color=\"red\">${errorInSex}</font></p>\n" +
                "                    <OPTION SELECTED value=\"\">Brand</OPTION>\n" +
                "                    <OPTION VALUE=misi>misi</OPTION>\n" +
                "                    <OPTION VALUE=koji>koji</OPTION>\n" +
                "                    <OPTION VALUE=adidas>adidas</OPTION>\n" +
                "                </SELECT>\n" +
                "                </td>\n" +
                "                <td> <p>รุ่น</p><SELECT name=\"generation\" required><p><font size=\"3\" color=\"red\">${errorInSex}</font></p>\n" +
                "                    <OPTION SELECTED value=\"\">Generation</OPTION>\n" +
                "                    <OPTION VALUE=ma11>ma11</OPTION>\n" +
                "                    <OPTION VALUE=kk55>kk55</OPTION>\n" +
                "                    <OPTION VALUE=kk577>kk577</OPTION>\n" +
                "                </SELECT>\n" +
                "                </td>\n" +
                "            </tr>\n" +
                "        </table>\n" +
                "        <br>"
        }
        function myFunction(e) {
            document.getElementById("myText").value = e.target.value
        }
    </script>

</head>
<body>
<form>
<div class="pageBox">
    <div class="pageH1"><left><h1>เพิ่มใบสั่งสินค้า</h1></left></div>

    <div class="pageOrderAdd" style="overflow-y:scroll;height:420px" align="center">
        <table>
            <tr>
                <td width="300px"><p>รหัสลูกค้า</p><input type="text" id="myText" name="IdCustomer" placeholder="Customer ID" readonly> </td>
                <td width="300px"><p>วันที่จัดส่ง</p>
                    <select name="Day">
                        <option selected disabled value="">- Day -</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select><select name="Month">
                        <option selected disabled value="">- Month -</option>
                        <option value="01">January</option>
                        <option value="02">Febuary</option>
                        <option value="03">March</option>
                        <option value="04">April</option>
                        <option value="05">May</option>
                        <option value="06">June</option>
                        <option value="07">July</option>
                        <option value="08">August</option>
                        <option value="09">September</option>
                        <option value="10">October</option>
                        <option value="11">November</option>
                        <option value="12">December</option>
                    </select><select name="Year">
                        <option selected disabled value="">- Year -</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                        <option value="2026">2026</option>
                        <option value="2027">2027</option>
                        <option value="2028">2028</option>
                        <option value="2029">2029</option>
                        <option value="2030">2030</option>
                        <option value="2031">2031</option>
                        <option value="2032">2032</option>
                        <option value="2033">2033</option>
                        <option value="2034">2034</option>
                        <option value="2035">2035</option>
                        <option value="2036">2036</option>
                        <option value="2037">2038</option>
                        <option value="2038">2038</option>
                        <option value="2039">2039</option>
                        <option value="2040">2040</option>
                        <option value="2041">2041</option>
                        <option value="2042">2042</option>
                        <option value="2043">2043</option>
                        <option value="2044">2044</option>
                        <option value="2045">2045</option>
                        <option value="2046">2046</option>
                        <option value="2047">2047</option>
                        <option value="2048">2048</option>
                        <option value="2049">2049</option>
                        <option value="2050">2050</option>
                        <option value="2051">2051</option>
                        <option value="2052">2052</option>
                        <option value="2053">2053</option>
                        <option value="2054">2054</option>
                        <option value="2055">2055</option>
                        <option value="2056">2056</option>
                        <option value="2057">2058</option>
                        <option value="2058">2058</option>
                        <option value="2059">2059</option>
                        <option value="2060">2060</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td> <p>ชื่อลูกค้า</p>
                    <SELECT name="nameCustomer" required onchange="myFunction(event)" style="width: 200px; height:25px;"><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION SELECTED disabled ="">Name</OPTION>
                        <%
                            for(int i=0 ; i<name.length ; i++){
                                response.setContentType("text/html");
                                out.print("<OPTION VALUE="+customerid[i]+">"+name[i]+"&nbsp; &nbsp;"+lastname[i]+"</OPTION>");
                            }
                        %>
                </SELECT>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td width="300px"><p>รหัสสินค้า</p>
                    <input type="text" id="myText" name="ProductID" value="<%=ides%>" placeholder="ProductID" readonly>
                </td>
                <td width="300px"><p>จำนวน (เส้น)</p><input type="text" name="NumTire" placeholder="Trie Number"> </td>
            </tr>
            <tr>
                <td> <p>ราคา(ต่อเส้น)</p><input type="text" id="myText" name="Price" value="<%=prices%>" placeholder="Price" readonly>
                </td>
            </tr>
            <tr>
                <td> <p>ยี่ห้อ</p>
                    <input type="text" id="myText" name="Brand" value="<%=brands%>"placeholder="Brand" readonly>
                </td>
                <td> <p>รุ่น</p>
                    <input type="text" id="myText" name="Generation" value="<%=generations%>"placeholder="Generation" readonly>
                </td>
            </tr>
        </table>
        <br>
        <form name="form" action="post" method="">
            <div id="createTextbox"></div>
            <i onclick="CreateTextbox();" class="fa fa-plus-circle" aria-hidden="true"></i>
        </form>

        <br>
        <table>
            <tr>
                <td>
                    <button class="buttonConfirm" style="vertical-align:middle" type="submit"><span>Confirm </span> </button>
                </td>
                <td>
                    <a href="order.jsp"><button class="buttonCancel" style="vertical-align:middle" type="button"><span>Cancel </span> </button></a>
                </td>
            </tr>
        </table>
    </div>
</div>
</form>
</body>
</html>
