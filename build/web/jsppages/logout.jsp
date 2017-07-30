<%-- 
    Document   : logout
    Created on : 24-Jun-2016, 16:05:35
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("Eid");
            session.removeAttribute("Password");
            session.removeAttribute("Emp");
            session.invalidate();
            response.sendRedirect("../htmlpages/login_failed.html");
        %>
    </body>
</html>
