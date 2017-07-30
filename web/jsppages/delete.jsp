<%-- 
    Document   : delete
    Created on : 02-Jul-2016, 09:27:14
    Author     : lenovo
--%>

<%@page import="com.connection"%>
<%@page import="com.bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        String Eid=request.getParameter("Eid");
        
        bean b=new bean();
        b.setEid(Eid);
        
        connection c=new connection();
        c.create_connection();
       session.getAttribute("Eid");
       session.getAttribute("Password");
        String s=b.delete(b);
        out.print(s);
        %>
    </body>
</html>
