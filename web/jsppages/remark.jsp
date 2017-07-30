<%-- 
    Document   : remark
    Created on : Jul 3, 2016, 8:48:43 PM
    Author     : pankaj
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%//@page import="com.bean_remark"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

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
table#t02 tr:nth-child(even) {
    background-color: #eee;
}
table#t02 tr:nth-child(odd) {
   background-color:#fff;
}
table#t02 th {
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
          String f=request.getParameter("mobile");
          String g=request.getParameter("Email");
          String h=request.getParameter("Remark");
          String i=request.getParameter("issue");
          String j=request.getParameter("status");
          java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
           try
       {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Neeraj@1803");   
       Statement st = con.createStatement();
       int k=st.executeUpdate("insert into remark(Eid,Emp_name,Customer_firstName,Customer_middleName,Customer_lastName,Customer_email,Mobile,Issue,Status,Remark,Time) Values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+i+"','"+j+"','"+h+"','"+date+"')");
       
       
       
       
       
       }
       catch(Exception e2)
       {
       out.println(e2.getMessage());
       }
        %>
          
         <table id="t02">
  <tr>
    <th>Eid</th>
    <th>Ename</th>
    <th>Customer First Name</th>
    <th>Customer Middle Name</th>
    <th>Customer Last Name</th>
    <th>Customer Email</th>
    <th>Customer Mobile</th>
    <th>Issue</th>
    <th>Status</th>
    <th>Time</th>
    <th>Remark</th>
    <th>Done</th>
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
     <td><%=b1.getCustomer_email()%></td>
    <td><%=b1.getMobile()%></td>
    <td><%=b1.getIssue()%></td>
   
    <td><%=b1.getStatus()%></td>
    <td><%= b1.getTime()%></td>
     <td><%=b1.getRemark()%></td>
    <td style="cursor:pointer" onclick="location.href='../htmlpages/done.html'">Click Here</td>
  </tr>
  
   <%
    
             }
    }catch(Exception ex)
    {
    out.print(ex.getMessage());
    }
        %>
        </table>
        
        <%-- 
        <sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="Neeraj@1803"/>
       <sql:query dataSource="${con}" var="search">
            Select * from Customer where email=?
            <sql:param value="${b}"/>
        </sql:query>
            
        <sql:update dataSource="${con}" var="result">
            INSERT INTO remark(Emp_name,Status,Remark) VALUES('"+e+"','"+d+"','"+c+"');
        </sql:update> 
        <sql:query dataSource="${con}" var="result">
            SELECT* from remark;
        </sql:query>
            <table>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                    <td><c:out value="${row.Eid}" /></td>
                    <td><c:out value="${row.Emp_name}" /></td>
                    <td><c:out value="${row.Customer_firstName}" /></td>
                    <td><c:out value="${row.Customer_middleName}" /></td>
                    <td><c:out value="${row.Customer_lastName}" /></td>
                    <td><c:out value="${row.Mobile}" /></td>
                    <td><c:out value="${row.Issue}" /></td>
                    <td><c:out value="${row.Status}" /></td>
                    <td><c:out value="${row.Remark}" /></td>
                </tr>
                </c:forEach>
                
            </table> --%>
   
    </body>
</html>
