<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 05-Nov-19
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>ชื่อยี่ห้อและรุ่น | 21*</title>
    <link rel="stylesheet" href="css_tire_generation.css">
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>ชื่อยี่ห้อและรุ่น | 21*</h1></left></div>
    <div class="pageH" align="right"> <a href="tire.jsp"><button class="buttonBack" style="vertical-align:middle"><span>BACK </span> </button></a>
    </div>
    <div class="pageGen" style="overflow-y:hidden;height:420px">
        <table>
            <tr>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/21_MICHELINPilot%20Super%20Sport1.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>Pilot Super Sport</h4>
                            <input type="hidden" value="MI21650" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/21_MICHELINPilot%20Super%20Sport1.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>Pilot Super Sport</h4>
                            <input type="hidden" value="MI21710" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/21_MICHELINPilot%20Sport%20Cup%202.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>Pilot Sport Cup 2</h4>
                            <input type="hidden" value="MI21750" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/21_MICHELINPilot%20Sport%204S4.png" height="125"/>
                            <h2>MICHELIN</h2>
                            <h4>Pilot Sport 4S</h4>
                            <input type="hidden" value="MI21850" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/21_MICHELINPilot%20Sport%204S4.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>Pilot Sport 4S</h4>
                            <input type="hidden" value="MI21900" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
            </tr>
        </table>
    </div>

</div>
</body>
</html>
