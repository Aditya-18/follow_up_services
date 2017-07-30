<%-- 
    Document   : register
    Created on : Jun 15, 2016, 11:24:20 AM
    Author     : HP
--%>
<%@page import="com.connection"%>
<%@page import="com.bean"%>
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
            String Fname=request.getParameter("Fname");
            String Lname=request.getParameter("Lname");
            String Company=request.getParameter("Company");
            String LeadOwner=request.getParameter("LeadOwner");
            int Phone=Integer.parseInt(request.getParameter("Phone"));
            String Email=request.getParameter("Email");
            String Mobile=request.getParameter("Mobile");
            String Website=request.getParameter("Website");
            String Industry=request.getParameter("Industry");
            String Twitter=request.getParameter("Twitter");
            String Skype=request.getParameter("Skype");
            String Street=request.getParameter("Street");
            String City=request.getParameter("City");
            String State=request.getParameter("State");
            String Zip=request.getParameter("Zip");
            String Country=request.getParameter("Country");
            
         bean b=new bean();
         bean_login bl = new bean_login();
         b.setCity(City);
         b.setCompany(Company);
         b.setCountry(Country);
         b.setEmail(Email);
         b.setFname(Fname);
         b.setIndustry(Industry);
         b.setLeadOwner(LeadOwner);
         b.setLname(Lname);
         b.setMobile(Mobile);
         b.setPhone(Phone);
         b.setSkype(Skype);
         b.setState(State);
         b.setStreet(Street);
         b.setTwitter(Twitter);
         b.setWebsite(Website);
         b.setZip(Zip);
         b.setEid(Eid);
         b.setPassword(Password);
         bl.setEid(Eid);
         bl.setPassword(Password);
        
        
       session.getAttribute("Eid");
        session.getAttribute("Password");
         String s=b.save(b);
         out.print(s);
         String s1 = bl.save(bl);
         out.print(s1);
        response.sendRedirect("../htmlpages/register_data.html");
        %>
</html>
