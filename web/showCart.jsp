<%-- 
    Document   : showCart
    Created on : Oct 2, 2017, 4:03:27 PM
    Author     : Admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
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
                        <div class="cl">&nbsp;</div>
                        <h1 style="text-align: center; color: red;">Your Shopping Cart</h1>
                        <c:set var="shop" value="${sessionScope.SHOP}"/>
                        <c:if test="${not empty shop}">
                            <table border="1" class="shoppingCart">
                                <thead>
                                    <tr>
                                        <td>No.</td>
                                        <td>Code</td>
                                        <td>Name</td>
                                        <td>Price</td>
                                        <td>Quantity</td>
                                        <td>Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <form action="ControllerCartBean">
                                    <c:set var="count" value="0"/>
                                    <c:forEach var="rows" items="${shop}">
                                        <c:set var="count" value="${count+1}"/>
                                        <tr>
                                            <td>${count}</td>
                                            <td>${rows.value.sanpham.code}</td>
                                            <td>${rows.value.sanpham.name}</td>
                                            <td>${rows.value.sanpham.price}</td>
                                            <td>${rows.value.quantity}</td>
                                            <td><input type="checkbox" name="rmv"
                                                       value="${rows.value.sanpham.code}"/></td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <c:url var="add" value="ControllerCartBean">
                                            <c:param name="action" value="AddMore"/>
                                        </c:url>
                                        <td colspan="2"><a href="${add}">Add more</a></td>
                                        <td><input type="submit" value="Remove" name="action"/></td>
                                    </tr>
                                </form>
                                </tbody>
                            </table>
                        </c:if>
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
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
