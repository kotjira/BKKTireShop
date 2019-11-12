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
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>รายละเอียดใบสั่งสินค้า</h1></left></div>
    <div class="pageH" align="right"> <a href="home.jsp"><button class="buttonBack" style="vertical-align:middle"><span>BACK </span> </button></a>
    </div>

    <div class="pageOrder" style="overflow-y:scroll;height:420px">
        <table align="center">
            <tr>
                <th width="80px"><p>รหัสลูกค้า</p></th> <td width="150px"><p>FE61000044</p></td> <th width="50px"><p>ชือ</p></th> <td width="150px"><p>บุษกร</p></td> <th width="80px"> <p>นามสกุล</p></th > <td width="150px"><p>ศุภกิจอำนวย</p></td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <th width="80px"><p>ที่อยู่</p></th> <td width="150px"><p>อ.สำโรง สมุทรปราการ </p></td> <th width="80"><p>รหัสไปษณียร์</p></th> <td width="150px"><p>12540</p></td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>รหัสใบสั่งสินค้า </th> <th>รหัสสินค้า</th> <th>ชื่อสินค้า</th> <th>จำนวน(ล้อ)</th> <th>ราคา</th>
            </tr>
        </table>
    </div>

</div>
</body>
</html>
