<%-- 
    Document   : newProduct
    Created on : Oct 16, 2017, 9:51:41 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                        <h1>New Product</h1>
                        <form action="ControllerProducts">
                            <table class="insert">
                                <tr><td>Code</td><td><input type="text" name="txtCode" value=""/></td></tr>
                                <tr><td>Name</td><td><input type="text" name="txtName" value=""/></td></tr>
                                <tr><td>Price</td><td><input type="text" name="txtPrice" value=""/></td></tr>
                                <tr><td>Image</td><td><input type="file" name="txtImage" value=""/></td></tr>
                            </table>
                            <input style='margin-left: 65px; height: 30px; width: 60px;'type="submit" value="Insert" name="action"/>
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
