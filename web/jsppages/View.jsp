<%-- 
    Document   : View
    Created on : 23-Jun-2016, 06:29:56
    Author     : lenovo
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.bean"%>
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
    <th>Employee id</th>
    <th>Password</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Company</th>
    <th>Lead Owner</th>
    <th>Email</th>
    <th>Website</th>
    <th>Industry</th>
    <th>Mobile</th>
    <th>Telephone</th>
    <th>Twitter</th>
    <th>Skype</th>
    <th>Street</th>
    <th>City</th>
    <th>State</th>
    <th>Zip</th>
    <th>Country</th>
  </tr>
        <%
             //connection c=new connection();
             //c.create_connection();
    try{
           // ArrayList l=new ArrayList();
           bean b=new bean();
           List  l=b.view();
            session.getAttribute("Eid");
            session.getAttribute("Password"); 
            Iterator it=l.iterator();
             while(it.hasNext())
             {
                bean b1=(bean)it.next();
                %>
   
  <tr>
    <td><%=b1.getEid()%></td>
    <td><%=b1.getPassword()%></td>
    <td><%=b1.getFname()%></td>
    <td><%=b1.getLname()%></td>
    <td><%=b1.getCompany()%></td>
    <td><%=b1.getLeadOwner()%></td>
    <td><%=b1.getEmail()%></td>
    <td><%=b1.getWebsite()%></td>
    <td><%=b1.getIndustry()%></td>
    <td><%=b1.getMobile()%></td>
    <td><%=b1.getPhone()%></td>
    <td><%=b1.getTwitter()%></td>
    <td><%=b1.getSkype()%></td>
    <td><%=b1.getStreet()%></td>
    <td><%=b1.getCity()%></td>
    <td><%=b1.getState()%></td>
    <td><%=b1.getZip()%></td>
    <td><%=b1.getCountry()%></td>
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
