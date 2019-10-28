<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 23-Oct-19
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login - เข้าสู่ระบบ </title>
    <link rel="stylesheet" href="css_indexlogin.css">
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
                  <form action="${pageContext.request.contextPath}/loginprocess" method="post">
                    <p>User  name</p><p><font size="3" color="red">${loginFailMsg}</font></p>
                    <p><font size="3" color="red">${errorInNameMsg}</font></p>
                    <input type="text" name="Username" placeholder="Enter User name" value="${user.email}" autofocus>
                    <p>Password</p><p><font size="3" color="red">${errorInPassMsg}</font> </p>
                    <input type="password" name="password" placeholder="●●●●●●●●" value="${user.pass}">
                    <a href="#"><u>Forget Password</u></a>
                    <br>
                    <br>
                    <a href="date.jsp"><input type="submit" name="Submit" value="Sign In"></a>
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
