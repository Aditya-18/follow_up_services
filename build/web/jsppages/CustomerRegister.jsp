<%-- 
    Document   : CustomerRegister
    Created on : Jun 24, 2016, 11:38:39 AM
    Author     : pankaj
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
          String firstName=request.getParameter("first_name");
          String middleName=request.getParameter("middle_name");
          String lastName=request.getParameter("last_name");
          String phone=request.getParameter("phone_no");
          String mobile=request.getParameter("mobile_no");
          String source=request.getParameter("source");
          String email=request.getParameter("email");
          String fax=request.getParameter("fax");
          String twitter=request.getParameter("twitter_id");
          String street=request.getParameter("street_address");
          String city=request.getParameter("city");
          String state=request.getParameter("state");
          String country=request.getParameter("country");
          String comment=request.getParameter("comment");
          String time=request.getParameter("time");
          
          try
       {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");   
       Statement st = con.createStatement();
       int i=st.executeUpdate("insert into customer(FirstName,MiddleName,LastName,Phone,Mobile,Source,Email,Fax,TwitterId,StreetAddress,City,State,Country,Comment,Time) values('"+firstName+"','"+middleName+"','"+lastName+"','"+phone+"','"+mobile+"','"+source+"','"+email+"','"+fax+"','"+twitter+"','"+street+"','"+city+"','"+state+"','"+country+"','"+comment+"','" + time + "')");
       
       if(i>0)
           
       {
        out.print("Data saved");
        //response.sendRedirect("../htmlpages/Customer.html");
       }
       else
       {
         out.print("Not saved");
       }
       }
       catch(Exception e)
       {
       out.println(e.getMessage());
       }
        
        %>
    </body>
</html>
