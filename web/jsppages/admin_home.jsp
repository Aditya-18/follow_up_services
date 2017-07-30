<%-- 
    Document   : admin_home
    Created on : 02-Jul-2016, 08:01:39
    Author     : lenovo
--%>

<%@page import="sun.security.util.Password"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOLLOW UP</title>
       
   <style>
            body {  height: 100%;padding: 0; margin: 0; }
            div { width: 33%; height: 50%; float: left; }
            #div1 { background: transparent; padding-top: 70px;}
            #div2 { background: transparent; padding-top: 70px;}
            #div3 { background: transparent;padding-top: 70px ;}
            #div4 { background: transparent;padding-top: 10px; }
            
           
           
</style>
   
    </head>
    <body>
        <%
               session.getAttribute("Eid");
               session.getAttribute("Password");
        %>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           WELCOME ADMIN
           
           
        
       
        <div id="div1">
            <br>
            <a HREF="../htmlpages/register.html" target="_blank" >   <img src="..\pictures\register_emp.jpg" alt="XYZ" width="280px" height="100px"/></a>
        </div>
        <div id="div2">
            <br>
            <a HREF="../htmlpages/delete.html" target="_blank" > <img src="..\pictures\delete_emp.jpg" alt="XYZ" width="280px" height="100px"/></a>
        </div>
        <div id="div2">
            <a HREF="../jsppages/View.jsp" target="_blank" > <img src="..\pictures\view_emp.jpg" alt="XYZ" width="280px" height="100px"/></a>
        </div>
            <div id="div1">
            <br>
            <a HREF="../htmlpages/Customer.html" target="_blank" >   <img src="..\pictures\regis_cust.jpg.png" alt="XYZ" width="280px" height="100px"/></a>
        </div>
        <div id="div2">
            <br>
            <a HREF="../jsppages/View_cust.jsp" target="_blank" > <img src="..\pictures\view_cust.jpg.png" alt="XYZ" width="280px" height="100px"/></a>
        </div>
        
        
   
        
    </body>
</html>
