<%-- 
    Document   : products
    Created on : Oct 2, 2017, 11:38:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="CSS/style.css" rel="stylesheet" type="text/css"/>
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP page</title>
    </head>
    <body>
        <div class="shell">
            <%@include file="header.jsp" %>
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
                        <form action="ControllerProducts">
                            Nhập từ khóa: <input type="text" name="txtTenSP" value=""/>
                            <input type="submit" name="action" value="Search"/>            
                        </form>
                        <table border="1">
                            <tr>
                                <td>Code</td>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Image</td>
                                <td>Edit</td>
                                <td>Delete</td>
                            </tr>
                            <c:forEach var="rows" items="${listSP}">
                                <form action="ControllerProducts">
                                    <tr>
                                        <td>${rows.code}</td>
                                        <td>${rows.name}</td>
                                        <td>${rows.price}</td>
                                        <td><img style='width:200px; height:200px' src="images/${rows.img}"/></td>
                                            <c:url var="del" value="ControllerProducts">
                                                <c:param name="action" value="Edit"/>
                                                <c:param name="txtCode" value="${rows.code}"/>
                                                <c:param name="txtName" value="${rows.name}"/>
                                                <c:param name="txtPrice" value="${rows.price}"/>                        
                                            </c:url>
                                        <td><a href="${del}">Edit</a></td>
                                        <td>
                                            <input type="hidden" name="txtCode" value="${rows.code}"/>  
                                            <input type="submit" name="action" value="Delete"/>  
                                        </td>
                                    </tr>
                                </form>
                            </c:forEach>
                        </table>
                        <br/>
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
                    <!-- End Categories -->
                </div>
                <!-- End Sidebar -->
                <div class="cl">&nbsp;</div>
            </div>
            <%@include file="admin/footer_ad.jsp" %>
        </div>
    </body>
</html>