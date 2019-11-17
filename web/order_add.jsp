<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 12-Nov-19
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                "                <td> <p>จำนวนราคา(ต่อเส้น)</p><SELECT name=\"price\" required><p><font size=\"3\" color=\"red\">${errorInSex}</font></p>\n" +
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
    </script>
</head>
<body>
<form>
<div class="pageBox">
    <div class="pageH1"><left><h1>เพิ่มใบสั่งสินค้า</h1></left></div>

    <div class="pageOrderAdd" style="overflow-y:scroll;height:420px" align="center">
        <table>
            <tr>
                <td width="300px"><p>รหัสลูกค้า</p><input type="text" name="IdCustomer" placeholder="Customer ID"> </td>
                <td width="300px"><p>วันที่จัดส่ง</p><input type="text" name="DateSend" placeholder="Date"> </td>
            </tr>
            <tr>
                <td> <p>ชื่อลูกค้า</p>
                    <SELECT name="nameCustomer" required><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION SELECTED value="">Name</OPTION>
                    <OPTION VALUE=1>ไกรวิทย์</OPTION>
                    <OPTION VALUE=2>บุษกร</OPTION>
                    <OPTION VALUE=3>กิ่งพัชฌา</OPTION>
                    <OPTION VALUE=1>สมพงษ์</OPTION>
                    <OPTION VALUE=2>กฤเพชร</OPTION>
                    <OPTION VALUE=3>กฤษณา</OPTION>
                </SELECT>
                </td>
            </tr>
        </table>
        <br>
        <br>

        <table>
            <tr>
                <td width="300px"><p>รหัสสินค้า</p><input type="text" name="IdTire" placeholder="Tire ID"> </td>
                <td width="300px"><p>จำนวน (เส้น)</p><input type="text" name="NumTire" placeholder="Trie Number"> </td>
            </tr>
            <tr>
                <td> <p>จำนวนราคา(ต่อเส้น)</p><SELECT name="price2" required><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION SELECTED value="">price</OPTION>
                    <OPTION VALUE=3000>3000</OPTION>
                    <OPTION VALUE=3500>3500</OPTION>
                    <OPTION VALUE=3600>3600</OPTION>
                </SELECT>
                </td>
            </tr>
            <tr>
                <td> <p>ยี่ห้อ</p><SELECT name="brand2" required><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION SELECTED value="">Brand</OPTION>
                    <OPTION VALUE=misi>misi</OPTION>
                    <OPTION VALUE=koji>koji</OPTION>
                    <OPTION VALUE=adidas>adidas</OPTION>
                </SELECT>
                </td>
                <td> <p>รุ่น</p><SELECT name="generation" required><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION SELECTED value="">Generation</OPTION>
                    <OPTION VALUE=ma11>ma11</OPTION>
                    <OPTION VALUE=kk55>kk55</OPTION>
                    <OPTION VALUE=kk577>kk577</OPTION>
                </SELECT>
                </td>
            </tr>
        </table>
        <br>
        <form name="form" action="post" method="">
            <div id="createTextbox"></div>
            <i onclick="CreateTextbox();" class="fa fa-plus-circle" aria-hidden="true"></i>
        </form>

        <br>
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
