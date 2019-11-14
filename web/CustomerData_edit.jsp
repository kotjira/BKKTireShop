<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 06-Nov-19
  Time: 7:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String ID = session.getAttribute("ID").toString();
    String Name = session.getAttribute("Name").toString();
    String Surname = session.getAttribute("Surname").toString();
    String Gender = session.getAttribute("Gender").toString();
    String Address = session.getAttribute("Address").toString();
    String Nationality = session.getAttribute("Nationality").toString();
    String Tel = session.getAttribute("Tel").toString();
    String Email = session.getAttribute("Email").toString();
    String PostId = session.getAttribute("PostId").toString();
%>
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver

        Connection con=DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP","bkkgroup","212224236248"); //create connection

        if(request.getParameter("id2")!=null) //check login button click event not null
        {

            String cusid = request.getParameter("id2");
          // PreparedStatement pstmt=null; //create statement

           //pstmt=con.prepareStatement("delete from customer where Customer_ID = ?"); //sql select query
            // pstmt.setString(1,ID);

          //ResultSet rs=pstmt.executeQuery(); //execute query and store in resultset object rs.
            Statement s = null;
            s = con.createStatement();
            String sql = "delete from customer where Customer_ID = '"+cusid+"'";
            s.execute(sql);
            response.sendRedirect("customerData.jsp"); //after login success redirect to date.jsp page
            con.close(); //close connection
        }

    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>
<html>

<head>
    <title>แก้ไขข้อมูลลูกค้า</title>
    <link rel="stylesheet" href="css_CustomerData_edit.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>เแก้ไขข้อมูลลูกค้า</h1></left></div>


    <div class="pageAdd" style="overflow-y:hidden;height:420px" align="center">
        <table>
            <tr>
                <td width="300px"><p>ชื่อ</p><input type="text" name="firstName" value="<%=Name%>" placeholder="Name"> </td>
                <td width="300px"><p>นามสกุล</p><input type="text" name="lastName" value="<%=Surname%>" placeholder="LastName"></td>
            </tr>
            <tr>
                <%
                    String genderA = " ";
                    String genderB = " ";
                    String genderC = " ";

                    if(Gender.equals("Male")){
                        genderA = "SELECTED";
                    }
                    if(Gender.equals("Female")){
                        genderB = "SELECTED";
                    }
                    if(Gender.equals("Other")){
                        genderC = "SELECTED";
                    }
                %>
                <td> <p>เพศ</p><SELECT name="sex" required><p><font size="3" color="red">${errorInSex}</font></p>
                    <OPTION value="">Gender</OPTION>
                    <OPTION <%=genderA%> VALUE=Male>Male</OPTION>
                    <OPTION <%=genderB%> VALUE=Female>Female</OPTION>
                    <OPTION <%=genderC%> VALUE=Other>Other</OPTION>
                </SELECT>
                </td> <td> <p>สัญชาติ</p><input type="text" name="nationality" value="<%=Nationality%>" placeholder="Nationality"> </td>
            </tr>
            <tr>
                <td><p>ที่อยู่</p><input type="text" name="homeID" value="<%=Address%>" placeholder="Address"></td>
                <td> <p>รหัสไปษณียร์</p><input type="number" name="post" value="<%=PostId%>" placeholder="The Post Office"></td>
            </tr>
            <tr>
                <td><p>เบอร์โทรศัพท์</p><input type="number" name="phoneMe" value="<%=Tel%>" placeholder="Phone Number"></td>
                <td><p>อีเมล์</p><input type="text" name="email" value="<%=Email%>" placeholder="E-mail"></td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                   <a href="CustomerData_edit.jsp?id2=<%=ID%>">  <button type="submit" value="del" class="buttonDelete" style="vertical-align:middle"><span>Delete </span> </button>
                    </a>
                </td>
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
