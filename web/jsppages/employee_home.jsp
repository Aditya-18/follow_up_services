<%-- 
    Document   : employee_home
    Created on : 02-Jul-2016, 08:02:40
    Author     : lenovo
--%>

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
            session.getAttribute("Emp");
        %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           WELCOME ADMIN
           
           
        
       
        <div id="div1">
            <br>
            <a HREF="../htmlpages/make_call.html" target="_blank" >   <img src="..\pictures\emp_makecall.jpg" alt="XYZ" width="280px" height="200px"/></a>
        </div>
        <div id="div2">
            <br>
            <a HREF="../jsppages/view_remark.jsp" target="_blank" > <img src="..\pictures\emp_updatecust.jpg" alt="XYZ" width="280px" height="200px"/></a>
        </div>
        <div id="div2">
            <a HREF="../jsppages/view_done.jsp" target="_blank" > <img src="..\pictures\emp_viewcust.jpg" alt="XYZ" width="280px" height="200px"/></a>
        </div>
        
    </body>
</html>
