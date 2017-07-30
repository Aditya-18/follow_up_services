<%-- 
    Document   : login
    Created on : 02-Jul-2016, 06:35:12
    Author     : lenovo
--%>

<%@page import="com.connection"%>
<%@page import="com.bean_login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOLLOW UP</title>
    </head>
    <body>
        <%
         String Eid=request.getParameter("Eid");
         String Password=request.getParameter("Password");
         bean_login b=new bean_login();
         b.setEid(Eid);
         b.setPassword(Password);
         connection c=new connection();
         c.create_connection();
         String i=b.search(b);
         if(i.equals("admin"))
         {
             session.setAttribute("Eid", Eid);
             session.setAttribute("Password", Password);
             response.sendRedirect("../htmlpages/admin_home.html");
         }
         else if(i.equals("employee"))
         {
             session.setAttribute("Emp", Eid);
             response.sendRedirect("../htmlpages/employee_home.html");
         }
         else
         {
             
             response.sendRedirect("../htmlpages/login_failed.html");
         }
         out.print(i);
         %>
    </body>
</html>
