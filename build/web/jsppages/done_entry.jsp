<%-- 
    Document   : remark_entry
    Created on : 05-Jul-2016, 13:42:10
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
    </head>
    <body>
        <%
    String Emp=session.getAttribute("Emp").toString();
    String cust=session.getAttribute("e").toString();
    String eid="",fname="",lname="",mobile="",status="",comment="",mname="";
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
    Statement s=con.createStatement();
    java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
    ResultSet r=s.executeQuery("select * from customer where Email='"+cust+"'");
    while(r.next())
    {  fname=(r.getString("FirstName"));
        lname=(r.getString("LastName"));
    //    mobile=(r.getString("Mobile"));
        mname=(r.getString("MiddleName"));
    //    comment=(r.getString("Comment"));
        eid=(r.getString("Eid"));
        
        
        
    }
    int i=s.executeUpdate("insert into done (Eid,Customer_firstName,Customer_middleName,Customer_lastName) values('"+eid+"','"+fname+"','"+mname+"','"+lname+"')");
    int p=s.executeUpdate("delete from customer where Email='"+cust+"'");
    if(i>0)
     {
         out.print("data saved");
     }
     else
     {
         out.print("not saved");
     }
    con.close();
%>
    </body>
</html>
