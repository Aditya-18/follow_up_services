<%-- 
    Document   : assignTask
    Created on : Jun 25, 2016, 11:51:47 AM
    Author     : Aditya Goel
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean_customer"%>
<%@page import="com.connection"%>
<%@page import="com.bean"%>
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
        <%Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");   
       Statement st = con.createStatement();
       %>
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
    <th>Employee Dealing</th>
  </tr>
        <%
             //connection c=new connection();
             //c.create_connection();
    try{
           // ArrayList l=new ArrayList();
        
            bean emp = new bean();
            bean_customer cus = new bean_customer();
            List empList = emp.view();
            List customerList = cus.assignCustomers();
            int totalCustomers = customerList.size();
            int totalEmployees = empList.size();
           // out.println(totalEmployees + "\n" + totalCustomers);
            int average = totalCustomers / totalEmployees;
            int i;
            Iterator customerIter = customerList.iterator();
            Iterator employeeIter = empList.iterator();
            for(int j = 0; j < average * totalEmployees; j++)
            {
                bean e1 = (bean)employeeIter.next();
                bean_customer b1 = (bean_customer)customerIter.next();
                for(i = 0; i < average; i++)
                {    
                    String eid = e1.getEid();
                    st.executeUpdate("update customer SET Eid = ('" + eid + "') WHERE Email = '" + b1.getEmail() + "'");
       
//                    out.println(e1.getEid() + "\n");
                }
            }
            Iterator employeeIter2 = empList.iterator();
                for(i = 0; i < totalCustomers % totalEmployees; i++)
                {
                    bean e1 = (bean)employeeIter2.next();
                    
                    bean_customer b1 = (bean_customer)customerIter.next();
                    String eid = e1.getEid();
                   st.executeUpdate("update customer SET Eid = ('" + eid + "') WHERE Email = '" + b1.getEmail() + "'");
//                     out.println(e1.getEid() + "\n");
                }
        
        
           bean_customer b=new bean_customer();
           List  l=b.assignCustomers(); 
            Iterator it=l.iterator();
             while(it.hasNext())
             {
                bean_customer b1=(bean_customer)it.next();
        %>
  <tr>
    <td><%=b1.getFirstName()%></td>
    <td><%= b1.getMiddleName()%></td>
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
    <td><%= b1.getComment()%></td>
    <td><%=b1.getDateTime()%></td>
    <td><%=b1.getEid()%></td>
  </tr>
  
        <%
             }
            }
        
          
    catch(Exception ex)
    {
        out.print(ex.getMessage());
    }
           
            
        %>
        </table>
    </body>
</html>

