<%--
  Created by IntelliJ IDEA.
  User: zGalactose
  Date: 11/6/2019
  Time: 3:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="main-content">

    <center>

        <%
            if(session.getAttribute("login")==null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
            {
                response.sendRedirect("index.jsp");
            }
        %>

        <h1> Welcome, <%=session.getAttribute("login")%> </h1>

        <h2><a href="logout.jsp">Logout</a></h2>

    </center>

</div>
</body>
</html>
