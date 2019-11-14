<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 14-Nov-19
  Time: 7:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>แก้ไขใบสั่งสินค้า</title>
    <link rel="stylesheet" href="css_order.css" >
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>แก้ไขใบสั่งสินค้า</h1></left></div>

    <div class="pageOrderEdit" style="overflow-y:scroll;height:420px">
        <table align="center">
            <tr>
                <td width="300px"><p>รหัสสินค้า</p><input type="text" name="IdTire" placeholder="Tire ID"> </td>
            </tr>
            <tr>
                <td width="300px"><p>ยี่ห้อ</p><input type="text" name="brand" placeholder="ฺBrand"></td>
                <td width="300px"><p>รุ่น</p><input type="text" name="generation" placeholder="Generation"> </td>
            </tr>
            <tr>
                <td width="300px"><p>จำนวน (เส้น)</p><input type="text" name="NumTire" placeholder="Trie Number">  </td>
            </tr>
        </table>
        <br>
        <table align="center">
            <tr>
                <td>
                    <button class="buttonDelete" style="vertical-align:middle" type="submit"><span>Delete </span> </button>
                </td>
                <td>
                    <button class="buttonConfirm" style="vertical-align:middle" type="submit"><span>Confirm </span> </button>
                </td>
                <td>
                    <button class="buttonCancel" style="vertical-align:middle" type="submit"><span>Cancel </span> </button>
                </td>
            </tr>
        </table>
    </div>

</div>

</body>
</html>
