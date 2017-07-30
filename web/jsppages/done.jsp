<%-- 
    Document   : done
    Created on : Jul 3, 2016, 11:40:30 PM
    Author     : pankaj
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.bean_remark"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
table#t03 tr:nth-child(even) {
    background-color: #eee;
}
table#t03 tr:nth-child(odd) {
   background-color:#fff;
}
table#t03 th {
    background-color: black;
    color: white;
}
</style>
    </head>
    <body>
        <%
          String a=request.getParameter("Eid");
          String b=request.getParameter("Ename");
          String c=request.getParameter("Custfirstname");
          String d=request.getParameter("Custmiddlename");
          String e=request.getParameter("Custlastname");
          
          String f=request.getParameter("issue");
          
          java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
           try
       {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Neeraj@1803");   
       Statement st = con.createStatement();
       int k=st.executeUpdate("insert into done(Eid,Emp_name,Customer_firstName,Customer_middleName,Customer_lastName,Issue,Time) Values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+date+"')");
       
       
       
       
       
       }
       catch(Exception e2)
       {
       out.println(e2.getMessage());
       }
        %>
          
       <table id="t03">
  <tr>
    <th>Eid</th>
    <th>Ename</th>
    <th>Customer First Name</th>
    <th>Customer Middle Name</th>
    <th>Customer Last Name</th>
  
    <th>Issue</th>
    <th>Time</th>
    
    <th>Status</th>
  </tr>
   <%
             //connection c=new connection();
             //c.create_connection();
    try{
           // ArrayList l=new ArrayList();
           bean_remark b2=new bean_remark();
           List  l=b2.view();
            session.getAttribute("Eid");
            session.getAttribute("Password"); 
            Iterator it=l.iterator();
             while(it.hasNext())
             {
                bean_remark b1=(bean_remark)it.next();
                %>
               <tr>
    <td><%=b1.getEid()%></td>
    <td><%=b1.getEmp_name()%></td>
    <td><%=b1.getCustomer_firstName()%></td>
     <td><%=b1.getCustomer_middleName()%></td>
    <td><%=b1.getCustomer_lastName()%></td>
    
    <td><%=b1.getIssue()%></td>
   
   
    <td><%= b1.getTime()%></td>
     
      <td>DONE</td>
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
