<%--
    Document   : index_ad
    Created on : Oct 21, 2017, 2:34:30 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Admin</title>
        <link href="../CSS/style.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>
        <script src="../js/jquery-func.js" type="text/javascript"></script>
        <script src="../js/jquery.jcarousel.pack.js" type="text/javascript"></script>
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
                    <ul><table border="1">
                            <tr name="dm">
                                <td>Mã sản phẩm</td>
                                <td>Tên sản phẩm</td>
                                <td>Giá</td>
                                <td>Hình ảnh</td>
                            </tr>
                            <%
                                Products list = new Products();
                                List<Product> listt = list.showProduct("");
                                for (Product sp : listt) {
                                    out.print("<form action=\"ControllerCartBean\">");
                                    out.print("<tr><td>" + sp.getCode() + "</td><td>" + sp.getName() + "</td>"
                                            + "<td>" + sp.getPrice() + "</td><td><img style='width:250px; height:250px' src='images/" + sp.getImg() + "'/><td><input type=\"submit\" "
                                            + "value=\"Add to Cart\" name=\"action\"/></td>"
                                            + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                            + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                            + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice() + "'>"
                                            + "<input type=\"hidden\" name=\"txtImage\" value='" + sp.getImg() + "'></tr>");
                                    out.print("</form>");
                                }
                            %>
                        </table>

                        <form action ="ControllerCartBean">
                            <input type="submit" value="View Cart" name="action"/>
                        </form>


                    </ul>
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
