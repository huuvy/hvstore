<%-- 
    Document   : error
    Created on : Oct 2, 2017, 11:38:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <div class="shell">
            <%@include file="header.jsp" %>
            <h1 style="text-align: center; padding: 10px 0;">Username or Password invalid!!!</h1>
            <p style="text-align: center">Click <a href="ControllerCustomers?action=tryAgain">here</a> to try again!</p><br/>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
