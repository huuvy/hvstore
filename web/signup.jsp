<%-- 
    Document   : signup
    Created on : Oct 21, 2017, 4:35:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Sản Phẩm Mới</title>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
        <script src="js/jquery-func.js" type="text/javascript"></script>
        <script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="shell">
            <%@include file="admin/header_ad.jsp" %>
            <div id="main">
                <div class="cl">&nbsp;</div>
                <div id="content">
                    <div id="slider" class="box">
                        <div id="slider-holder">
                            <ul>
                                <li><a href="#"><img src="images/slide1.jpg" alt=""/></a></li>           
                                <li><a href="#"><img src="images/slide2.jpg" alt=""/></a></li>
                                <li><a href="#"><img src="images/slide1.jpg" alt=""/></a></li>
                                <li><a href="#"><img src="images/slide2.jpg" alt=""/></a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="products">
                        <div class="cl">&nbsp;</div>
                        <h1 style="text-align: center;padding: 10px 0;">SIGN UP</h1>
                        <form action="ControllerCustomers">
                            <table class="signup">
                                <tr><td>Username</td><td><input style='width: 300px;' type="text" name="txtUser" value=""/></td></tr>
                                <tr><td>Password</td><td><input style='width: 300px;' type="text" name="txtPass" value=""/></td></tr>
                                <tr><td>Email</td><td><input style='width: 300px;' type="text" name="txtEmail" value=""/></td></tr>
                                <tr><td>Phone No</td><td><input style='width: 300px;' type="text" name="txtSDT" value=""/></td></tr>
                                <tr><td>Admin</td><td><input type="checkbox" name="chkAdmin" value="ADMIN"/></td></tr>
                            </table>
                            <input style='margin-left: 330px; height: 30px; width: 60px;' type="submit" name="action" value="SIGN UP"/>
                        </form>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <!-- End Products -->
                </div>
                <!-- End Content -->
                <!-- Sidebar -->
                <div id="sidebar">
                    <!-- Search -->

                    <!-- End Search -->
                    <!-- Categories -->
                    <div class="box categories">
                        <h2>Categories <span></span></h2>
                        <div class="box-content">
                            <ul>
                                <li><a href="ControllerProducts?txtTenSP=nike&action=Search">Nike</a></li>
                                <li><a href="ControllerProducts?txtTenSP=adidas&action=Search">Adidas</a></li>
                                <li><a href="ControllerProducts?txtTenSP=new&action=Search">New Balance</a></li>
                                <li class="last"><a href="ControllerProducts?txtTenSP=puma&action=Search">Puma</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cl">&nbsp;</div>            
            </div>
            <%@include file="admin/footer_ad.jsp" %>
        </div>
    </body>
</html>
