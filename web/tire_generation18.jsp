<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 05-Nov-19
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>ชื่อยี่ห้อและรุ่น | 18*</title>
    <link rel="stylesheet" href="css_tire_generation.css">
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>ชื่อยี่ห้อและรุ่น | 18*</h1></left></div>
    <div class="pageH" align="right"> <a href="tire.jsp"><button class="buttonBack" style="vertical-align:middle"><span>BACK </span> </button></a>
    </div>
    <div class="pageGen" style="overflow-y:hidden;height:420px">
        <table>
            <tr>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/18_Nexen-NFera-SU1%201.png" height="125" />
                            <h2>NEXEN</h2>
                            <h4>N FERA SU1</h4>
                            <input type="hidden" value="GO18630" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/18_Nexen-NFera-SU4%202.png" height="125" />
                            <h2>NEXEN</h2>
                            <h4>N FERA SU4</h4>
                            <input type="hidden" value="HA18630" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/18_PIRELLISCORPION%20VERDE%203.png" height="125" />
                            <h2>PIRELLI</h2>
                            <h4>SCORPION VERDE</h4>
                            <input type="hidden" value="NE18630" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/18_Goodyear%204.png" height="125"/>
                            <h2>GOODYEAR</h2>
                            <h4>EAGLE F1 DIRECTIONAL 5</h4>
                            <input type="hidden" value="NE18690" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/18_HANKOOK%205.png" height="125" />
                            <h2>HANKOOK</h2>
                            <h4>Ventus V12 evo2 (K120)</h4>
                            <input type="hidden" value="PI18106" name="brand">
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
