<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 06-Nov-19
  Time: 7:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>เพิ่มข้อมูลลูกค้า</title>
    <link rel="stylesheet" href="css_edit_CustomerData.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
    <div class="pageBox">
        <div class="pageH1"><left><h1>เพิ่มข้อมูลลูกค้า</h1></left></div>


        <div class="pageAdd" style="overflow-y:hidden;height:420px" align="center">
            <table>
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
                    <td> <p>รหัสไปษณียร์</p><input type="number" name="post1" placeholder="The Post Office"></td>
                </tr>
                <tr>
                    <td><p>เบอร์โทรศัพท์</p><input type="number" name="phoneMe1" placeholder="Phone Number"></td>
                    <td><p>อีเมล์</p><input type="text" name="email1" placeholder="E-mail"></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <a href="customerData.jsp"><button class="buttonCancel" style="vertical-align:middle"><span>Cancel </span> </button></a>
                    </td>
                    <td>
                        <a href="customerData.jsp"><button class="buttonConfirm" style="vertical-align:middle"><span>Confirm </span> </button></a>
                    </td>
                </tr>
            </table>
        </div>

    </div>
</body>
</html>
