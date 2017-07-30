<%-- 
    Document   : View_cust
    Created on : 28-Jun-2016, 09:51:54
    Author     : lenovo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.bean_customer"%>
<%@page import="com.connection"%>
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
    <th>First Name</th>
    <th>Middle Name</th>
    <th>Last Name</th>
    <th>Phone</th>
    <th>Mobile</th>
    <th>Source</th>
    <th>Email</th>
    <th>Fax</th>
    <th>Twitter ID</th>
    <th>Street</th>
    <th>City</th>
    <th>State</th>
    <th>Country</th>
    <th>Comment</th>
    <th>Time</th>
  </tr>
   <%
       session.getAttribute("Eid");
            session.getAttribute("Password"); 
             //connection c=new connection();
             //c.create_connection();
    try{
           // ArrayList l=new ArrayList();
           bean_customer b=new bean_customer();
           List  l=b.view();
            session.getAttribute("Eid");
            session.getAttribute("Password"); 
            Iterator it=l.iterator();
             while(it.hasNext())
             {
                bean_customer b1=(bean_customer)it.next();
                %>
               <tr>
    <td><%=b1.getFirstName()%></td>
    <td><%=b1.getMiddleName()%></td>
    <td><%=b1.getLastName()%></td>
    <td><%=b1.getPhone()%></td>
    <td><%=b1.getMobile()%></td>
    <td><%=b1.getSource()%></td>
    <td><%=b1.getEmail()%></td>
    <td><%=b1.getFax()%></td>
    <td><%=b1.getTwitterId()%></td>
    <td><%=b1.getStreetAddress()%></td>
    <td><%=b1.getCity()%></td>
    <td><%=b1.getState()%></td>
    <td><%=b1.getCountry()%></td>
    <td><%=b1.getComment()%></td>
    <td><%= b1.getDateTime()%></td>
    
  </tr>
  
   <%
    
             }
    }catch(Exception ex)
    {
    out.print(ex.getMessage());
    }
        %>
        </table>
        
    </body>
</html>
