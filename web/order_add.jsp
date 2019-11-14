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
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td width=\"300px\"><p>ยี่ห้อ</p><input type=\"text\" name=\"brand\" placeholder=\"ฺBrand\"></td>\n" +
                "                <td width=\"300px\"><p>รุ่น</p><input type=\"text\" name=\"generation\" placeholder=\"Generation\"> </td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td width=\"300px\"><p>จำนวน (เส้น)</p><input type=\"text\" name=\"NumTire\" placeholder=\"Trie Number\"> </td>\n" +
                "            </tr>\n" +
                "        </table>"
        }
    </script>
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>เพิ่มใบสั่งสินค้า</h1></left></div>

    <div class="pageOrderAdd" style="overflow-y:scroll;height:420px" align="center">
        <table>
            <tr>
                <td width="300px"><p>รหัสลูกค้า</p><input type="text" name="IdCustomer" placeholder="Customer ID"> </td>
            </tr>
            <tr>
                <td width="300px"><p>ชื่อ</p><input type="text" name="firstName1" placeholder="Name"> </td>
                <td width="300px"><p>นามสกุล</p><input type="text" name="lastName1" placeholder="LastName"></td>
            </tr>
            <tr>
                <td> <p>เพศ</p><SELECT name="sex1" required><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION SELECTED value="">Gender</OPTION>
                    <OPTION VALUE=Male>male</OPTION>
                    <OPTION VALUE=Female>female</OPTION>
                    <OPTION VALUE=Other>other</OPTION>
                </SELECT>
                </td> <td> <p>สัญชาติ</p><input type="text" name="nationality1" placeholder="Nationality"> </td>
            </tr>
            <tr>
                <td><p>ที่อยู่</p><input type="text" name="homeID1" placeholder="Address"></td>
                <td> <p>รหัสไปรษณีย์</p><input type="number" name="post1" placeholder="The Post Office"></td>
            </tr>
            <tr>
                <td><p>เบอร์โทรศัพท์</p><input type="number" name="phoneMe1" placeholder="Phone Number"></td>
                <td><p>อีเมล์</p><input type="text" name="email1" placeholder="E-mail"></td>
            </tr>
        </table>
        <br>
        <br>

        <table>
            <tr>
                <td width="300px"><p>รหัสสินค้า</p><input type="text" name="IdTire" placeholder="Tire ID"> </td>
            </tr>
            <tr>
                <td width="300px"><p>ยี่ห้อ</p><input type="text" name="brand" placeholder="ฺBrand"></td>
                <td width="300px"><p>รุ่น</p><input type="text" name="generation" placeholder="Generation"> </td>
            </tr>
            <tr>
                <td width="300px"><p>จำนวน (เส้น)</p><input type="text" name="NumTire" placeholder="Trie Number"> </td>
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

</body>
</html>
