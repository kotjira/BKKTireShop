<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 25-Oct-19
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Data - ข้อมูลลูกค้า</title>
    <link rel="stylesheet" href="css_customerData.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>ข้อมูลลูกค้า</h1></left></div>
    <div class="pageH" align="right"> <a href="home.jsp"><button class="buttonBack" style="vertical-align:middle"><span>BACK </span> </button></a>
    </div>

    <div class="pageDataTB" style="overflow-y:scroll;height:420px">
        <table bgcolor="#f5f5dc" border="1" cellspacing="0" align="center" >
            <tr align="center" bgcolor="#ff8c00">
                <th width="100px"  >รหัสลูกค้า</th> <th width="100px">ชื่อ</th> <th width="100px">นามสกุล</th> <th width="50px">เพศ</th> <th width="50px">สัญชาติ</th> <th width="200px">ที่อยู่</th> <th width="50px">รหัสไปษณียร์</th><th width="100px">เบอร์โทรศัพท์</th> <th width="150px">Email</th> <th>แก้ไข</th>
            </tr>
            <tr>
                <td>ME61000001</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> </td>
            </tr>
            <tr>
                <td>ME61000002</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000003</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000004</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000005</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000001</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000002</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000003</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000004</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000005</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000001</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000002</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000003</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000004</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000005</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000001</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000002</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000003</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000004</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td>ME61000005</td> <td>ไกรวิทย์</td> <td>รูปโฉม</td> <td>ชาย</td> <td>ไทย</td> <td>429 ปราณบุรี จ.ประจวบฯ</td><td>77120</td> <td>0971326965</td> <td>kraiwitroopchom@gmail.com</td> <td align="center"><a href="edit_CustomerData.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
            </tr>
            <tr>
                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td align="center"><a href="add_CustomerData.jsp"> <i class="fa fa-plus-circle" aria-hidden="true"></i></a></td>
            </tr>
        </table>
    </div>

</div>
</body>
</html>
