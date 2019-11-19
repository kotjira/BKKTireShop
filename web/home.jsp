<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 25-Oct-19
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Home - หน้าแรก</title>
    <link rel="stylesheet" href="css_home.css">
</head>
<body>
<div class="pageBox">
    <table>
        <tr>
            <td>
                <img src="./img/p2.png" width="390" align="left"/>
                <img src="./img/p1.png" width="600" align="left"/>
            </td>
            <td>
                <h1>Home</h1>
                <div class="pageHome" align="center">
                    <a href="tire.jsp"><button class="buttonTire"  style="vertical-align:middle"><span>ยางรถยนต์ </span> </button></a>
                    <a href="customerData.jsp"><button class="buttonDataCustomer"  style="vertical-align:middle"><span>ข้อมูลลูกค้า </span> </button></a>
                    <a href="date.jsp"><button class="buttonOrder"  style="vertical-align:middle"><span>ใบสั่งสินค้า </span> </button></a>
                </div>
                <br>
                <center><a href="logout.jsp"><button class="buttonLogout"  style="vertical-align:middle"><span>ออกจากระบบ</span> </button></a> </center>
            </td>

        </tr>
    </table>
</div>
</body>
</html>
