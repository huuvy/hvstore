<%-- 
    Document   : login
    Created on : Oct 2, 2017, 11:38:13 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="CSS/login_css.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
        <script src="js/jquery-func.js" type="text/javascript"></script>
        <script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
        <script src="js/login_js.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="shell">
        <%@include file="header.jsp" %>
        <div class="container">
            <section id="content">
                <form action="ControllerCustomers">
                    <h1>Login Form</h1>
                    <div>
                        <input type="text" placeholder="Username" name="txtUser" id="username" value="" />
                    </div>
                    <div>
                        <input type="password" placeholder="Password" name="txtPass" id="password" value="" />
                    </div>
                    <div>
                        <input type="submit" name="action" value="Log in" />
                        <a href="signup.jsp">Register</a>
                    </div>
                </form><!-- form -->
            </section><!-- content -->
        </div><!-- container -->
        
        <%@include file="footer.jsp" %>
</div>
    </body>
</html>
