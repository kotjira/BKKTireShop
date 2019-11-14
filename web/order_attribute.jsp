<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 12-Nov-19
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>รายละเอียดใบสั่งสินค้า</title>
    <link rel="stylesheet" href="css_order.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script language="JavaScript">
        window.print();
        parent.framename.print();
        document.frames('iFrameName').print();
        window.self.print();
        print();
    </script>
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>รายละเอียดใบสั่งสินค้า</h1></left></div>


    <div class="pageOrder" style="overflow-y:scroll;height:420px">
        <table align="center">
            <tr>
                <th width="80px"><p>รหัสลูกค้า</p></th> <td width="150px"><p>FE61000044</p></td> <th width="50px"><p>ชือ</p></th> <td width="150px"><p>บุษกร</p></td> <th width="80px"> <p>นามสกุล</p></th > <td width="150px"><p>ศุภกิจอำนวย</p></td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <th width="80px"><p>ที่อยู่</p></th> <td width="150px"><p>อ.สำโรง สมุทรปราการ </p></td> <th width="80"><p>รหัสไปรษณีย์</p></th> <td width="150px"><p>12540</p></td>
            </tr>
        </table>
        <br>
        <table bgcolor="#98fb98" align="center" border="1" cellspacing="0" align="center" >
            <tr bgcolor="#32cd32">
                <th width="150px">รหัสใบสั่งสินค้า </th> <th width="150px">รหัสสินค้า</th> <th width="150px">ชื่อสินค้า</th> <th width="50px">จำนวน(ล้อ)</th> <th width="150px">ราคา</th>
            </tr>
            <tr>
                <td>OR000001</td> <td>NT52014</td> <td>Misubishi</td> <td>4</td> <td>3000</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th align="left" width="150px"><p>ราคารวม</p></th> <td width="150px"><p>3000</p> <th><p>บาท</p></th>
            </tr>
            <tr>
                <th align="left" width="150px"><p>ราคารวม VAT 7%</p></th> <td  bgcolor="#ffe4e1"  width="150px"><p>3700</p> <th><p>บาท</p></th>
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
