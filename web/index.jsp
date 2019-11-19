<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 23-Oct-19
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.*" %>



<%
  try
  {
    Class.forName("com.mysql.jdbc.Driver"); //load driver

    Connection con=DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP","bkkgroup","212224236248"); //create connection

    if(request.getParameter("btn_login")!=null) //check login button click event not null
    {
      String dbemail,dbpassword;

      String email,password;

      email=request.getParameter("userName"); //txt_email
      password=request.getParameter("Password1"); //txt_password

      PreparedStatement pstmt=null; //create statement

      pstmt=con.prepareStatement("select * from employees where Em_Username=? AND Em_Password=?"); //sql select query
      pstmt.setString(1,email);
      pstmt.setString(2,password);

      ResultSet rs=pstmt.executeQuery(); //execute query and store in resultset object rs.

      if(rs.next())
      {
        dbemail=rs.getString("Em_Username");
        dbpassword=rs.getString("Em_Password");

        if(email.equals(dbemail) && password.equals(dbpassword))
        {
          session.setAttribute("login",dbemail); //session name is login and store fetchable database email address
          response.sendRedirect("home.jsp"); //after login success redirect to date.jsp page
        }
      }
      else
      {
        request.setAttribute("errorMsg","invalid userName or password"); //invalid error message for email or password wrong
      }

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
    <title>Login - เข้าสู่ระบบ </title>
    <link rel="stylesheet" href="css_indexlogin.css">
    <script>

      function validate()
      {
        var email = document.myform.userName;
        var password = document.myform.Password1;

        if (email.value == null || email.value == "") //check email textbox not blank
        {
          window.alert("please enter email ?"); //alert message
          email.style.background = '#f08080';
          email.focus();
          return false;
        }
        if (password.value == null || password.value == "") //check password textbox not blank
        {
          window.alert("please enter password ?"); //alert message
          password.style.background = '#f08080';
          password.focus();
          return false;
        }
      }

    </script>
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
          <h1>LOGIN </h1>
          <div class="pageLogin">
                  <form name="myform" onsubmit="return validate();">
                    <p>User  name</p><p><font size="3" color="red">${loginFailMsg}</font></p>
                    <p><font size="3" color="red">${errorMsg}</font></p>
                    <input type="text" name="userName" placeholder="Enter User name" value="${user.email}" autofocus>
                    <p>Password</p><p><font size="3" color="red">${errorInPassMsg}</font> </p>
                    <input type="password" name="Password1" placeholder="●●●●●●●●" value="${user.pass}">
                    <a href="#"><u>Forget Password</u></a>
                    <br>
                    <br>
                    <input type="submit" name="btn_login" value="Login">
                    <br>
                    <br>
                  </form>
          </div >
          <center><a>If you not member , please register here</a></center>
          <center><a href="register.jsp"><font color="#dc6104"><u>Register ?</u></font></a></center>
        </td>
      </tr>
    </table>

  </div>

  </body>
</html>
