<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 25-Oct-19
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    ArrayList<String> Id = new ArrayList<String>();
    ArrayList<String> Firstname = new ArrayList<String>();
    ArrayList<String> Lastname = new ArrayList<String>();
    ArrayList<String> Gender = new ArrayList<String>();
    ArrayList<String> Nationality = new ArrayList<String>();
    ArrayList<String> Address = new ArrayList<String>();
    ArrayList<String> PostId = new ArrayList<String>();
    ArrayList<String> Tel = new ArrayList<String>();
    ArrayList<String> Email = new ArrayList<String>();
    ResultSet resultSet = null;
  try {
      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      String dbURL = "jdbc:mysql://167.99.76.137:3306/BKK GROUP";
      String dbUser = "bkkgroup";
      String dbPass = "212224236248";
      Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

      PreparedStatement ps = con.prepareStatement("select * from customer");
      resultSet = ps.executeQuery();
      while (resultSet.next()){
          Id.add(resultSet.getString("Customer_ID"));
          Firstname.add(resultSet.getString("Cu_Name"));
          Lastname.add(resultSet.getString("Cu_Surname"));
          Gender.add(resultSet.getString("Cu_Gender"));
          Nationality.add(resultSet.getString("Cu_Nationality"));
          Address.add(resultSet.getString("Cu_Address"));
          PostId.add(resultSet.getString("Cu_PostId"));
          Tel.add(resultSet.getString("Cu_Tel"));
          Email.add(resultSet.getString("Cu_Email"));
      }
  }catch (Exception e){
      e.printStackTrace();
  }
    String[] id = new String[Id.size()];
    String[] firstname = new String[Firstname.size()];
    String[] lastname = new String[Lastname.size()];
    String[] gender = new String[Gender.size()];
    String[] nationality = new String[Nationality.size()];
    String[] address = new String[Address.size()];
    String[] postid = new String[PostId.size()];
    String[] tel = new String[Tel.size()];
    String[] email = new String[Email.size()];
    id = Id.toArray(id);
    firstname = Firstname.toArray(firstname);
    lastname = Lastname.toArray(lastname);
    gender = Gender.toArray(gender);
    nationality = Nationality.toArray(nationality);
    address = Address.toArray(address);
    postid = PostId.toArray(postid);
    tel = Tel.toArray(tel);
    email = Email.toArray(email);
%>
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
                <th width="100px"  >รหัสลูกค้า</th> <th width="100px">ชื่อ</th> <th width="100px">นามสกุล</th> <th width="50px">เพศ</th> <th width="55px">สัญชาติ</th> <th width="200px">ที่อยู่</th> <th width="50px">รหัสไปรษณีย์</th><th width="100px">เบอร์โทรศัพท์</th> <th width="170px">Email</th> <th>แก้ไข</th>
            </tr>
            <%
                int length = id.length;
                for(int i=0 ; i<id.length ; i++){
                    response.setContentType("text/html");
                    out.print("<tr>");
                    out.print(" <td>"+id[i]+"</td> <td>"+firstname[i]+"</td> <td>"+lastname[i]+"</td> <td>"+gender[i]+"</td> <td>"+nationality[i]+"</td> <td>"+address[i]+"</td><td>"+postid[i]+"</td> <td>"+tel[i]+"</td> <td>"+email[i]+"</td> <td align=\"center\">" +
                            "<form action=\"getcustomerData\" method=\"get\"><input type=\"hidden\" name=\"id\" value=\""+id[i]+"\"><button class=\"fa fa-pencil-square-o\" aria-hidden=\"true\" style=\"background-color:#f5f5dc;border-width:0px;\" type=\"submit\"> </button> </td></form>");
                    out.print("</tr>");
                }
            %>

            <tr>
                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td align="center"><a href="CustomerData_add.jsp"> <i class="fa fa-plus-circle" aria-hidden="true"></i></a></td>
            </tr>
        </table>
    </div>
</div>
</div>
</body>
</html>
