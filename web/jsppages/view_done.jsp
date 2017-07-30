<%-- 
    Document   : view_done
    Created on : 11-Jul-2016, 23:04:32
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOLLOW UP</title>
        <style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
    </head>
    <body>
        <table id="t01">
  
    <tr>
    <th>Customer Name</th>
   
    
    
  </tr>
       
         <% Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");   
       Statement st = con.createStatement();
       ResultSet r=st.executeQuery("select * from done");
       while(r.next())
    {
       %>
        <tr> 
            
            <td>
                <%=(r.getString("Customer_firstName"))%> <%=(r.getString("Customer_middleName"))%> <%=(r.getString("Customer_lastName"))%>
            </td>
     
     
         
    
        
        </tr> 
     <%}%>
            <%
con.close();%>
        </table> 
    </body>
</html>
