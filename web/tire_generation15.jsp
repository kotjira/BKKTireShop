<%--
  Created by IntelliJ IDEA.
  User: Kraiwit
  Date: 05-Nov-19
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ชื่อยี่ห้อและรุ่น | 15*</title>
    <link rel="stylesheet" href="css_tire_generation.css">
</head>
<body>
<div class="pageBox">
    <div class="pageH1"><left><h1>ชื่อยี่ห้อและรุ่น | 15*</h1></left></div>
    <div class="pageH" align="right"> <a href="tire.jsp"><button class="buttonBack" style="vertical-align:middle"><span>BACK </span> </button></a>
    </div>
    <div class="pageGen" style="overflow-y:hidden;height:420px">
        <table>
            <tr>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/15_MICHELINENERGY%20XM2%201.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>ENERGY XM2+</h4>
                            <input type="hidden" value="GO15615" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/15_MICHELINENERGY%20XM2%201.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>ENERGY XM2+</h4>
                            <input type="hidden" value="GO15670" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/15_MICHELINENERGY%20XM2%201.png" height="125" />
                            <h2>MICHELIN</h2>
                            <h4>ENERGY XM2+</h4>
                            <input type="hidden" value="MI15670" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/15_GOODYEARASSURANCE%20DURAPLUS%204.png" height="125" />
                            <h2>GOODYEAR</h2>
                            <h4>ASSURANCE DURAPLUS 2</h4>
                            <input type="hidden" value="MI15560" name="brand">
                            <center><a href="tire_attribute.jsp"><button type="submit" class="buttonAttribute" style="vertical-align:middle"><span>คุณสมบัติ</span> </button></a></center>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="pageGen1" align="center">
                        <form  action="<%= request.getContextPath() %>/attribute" method="get" >
                            <img src="./img/15_GOODYEARASSURANCE%20DURAPLUS%204.png" height="125" />
                            <h2>GOODYEAR</h2>
                            <h4>ASSURANCE DURAPLUS 2</h4>
                            <input type="hidden" value="MI15710" name="brand">
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
