<%-- 
    Document   : header
    Created on : Oct 19, 2017, 8:00:04 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <div id="header">
                <h1 id="logo"><a href="#">shoparound</a></h1>
                <div id="cart"> <a href="ControllerCartBean?action=View+Cart" class="cart-link">Your Shopping Cart</a>
                    <div class="cl">&nbsp;</div>
                    <span>Articles: <strong>0</strong></span> &nbsp;&nbsp; <span>Cost: <strong>0</strong></span> </div>
                <div id="navigation">
                    <ul>
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li><a href="#">Sản Phẩm</a></li>
                        <li><a href="login.jsp">Đăng Nhập</a></li>
                        <li><a href="ControllerCartBean?action=View+Cart">Giỏ Hàng</a></li>
                        <li><a href="http://hvstore.pe.hu/lienhe.html">Contact</a></li>
                    </ul>
                </div>
            </div>
        
    </body>
</html>
