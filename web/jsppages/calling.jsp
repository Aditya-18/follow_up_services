<%-- 
    Document   : calling
    Created on : 05-Jul-2016, 11:28:04
    Author     : lenovo
--%>

<%@page import="java.awt.event.ActionEvent"%>
<%@page import="java.awt.event.ActionListener"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOLLOW UP</title>
        <style>
            .x 
            {
                visibility: hidden;
            }
            .b1:focus ~ .x
            {
                visibility: visible;
            }
            .b1 {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
           .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    table, th, td {
   border: 1px solid black;
}
}
table, th, td {
   border: 1px solid black;
}

        </style>
    </head>
    <body>
        <b>   Hello 
        <%  String x=session.getAttribute("Emp").toString();
       out.print(x);
       String email="";
            //out.print(session.getAttribute("Emp"));
        %>
        </b>
       

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
    Statement s=con.createStatement();
    
    ResultSet r=s.executeQuery("select * from customer where Eid='"+x+"'");
    while(r.next())
    {%>
    <table>
        <tr >
            <td >
                Customer Name:
            </td>
           
            <td>
                <%=(r.getString("FirstName"))%> <%=(r.getString("LastName"))%>
            </td>
        </tr>
         <tr >
            <td >
                Mobile:
            </td>
            
            <td>
                <%=(r.getString("Mobile"))%>
            </td>
        </tr>
         <tr >
            <td >
                Phone:
            </td>
            
            <td>
                <%=(r.getString("Phone"))%>
            </td>
        </tr>
         <tr >
            <td >
                Email:
            </td>
            
            <td>
                <%=(r.getString("Email"))%>
                <% email=(r.getString("Email"));
                session.setAttribute("e", email); %>
            </td>
        </tr>
         <tr >
            <td >
                City:
            </td>
            
            <td>
                <%=(r.getString("City"))%>
            </td>
        </tr>
         <tr >
            <td >
                State:
            </td>
          
            <td>
                <%=(r.getString("State"))%>
            </td>
        </tr>
         <tr >
            <td >
                Country:
            </td>
          
            <td>
                <%=(r.getString("Country"))%>
            </td>
        </tr>
         <tr >
            <td >
                Source:
            </td>
           
            <td>
                <%=(r.getString("Source"))%>
            </td>
        </tr>
         <tr >
            <td >
                Last Call Time:
            </td>
           
            <td>
                <%=(r.getTimestamp("Time"))%>
            </td>
        </tr>
    
     
   
        
    

</table>

<button type="submit" class="b1" value="Make call"   >call</button>

<div class="x">
     <span id="countdown" class="timer"></span>
     
</div>

<table>
    <tr>
        <td>
<form action="remark_entry.jsp">
    
    <input type="submit" value="Entry remark" name="b1" class="button">
</form></td>
<td>
<form action="done_entry.jsp">
    
    <input type="submit" value="Entry done" name="b1" class="button">
</form>
</td>
</tr>
</table><%}%>
<%
    java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
    int i=s.executeUpdate("update customer set Time='"+date+"' where Email='"+email+"'");
   // out.print("time of contact changed to "+date);
%>
<%
con.close();%>
<script>   var seconds = 120;
function secondPassed() {
    var minutes = Math.round((seconds - 30)/60);
    var remainingSeconds = seconds % 60;
    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds;  
    }
    document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds;
    if (seconds == 0) {
        clearInterval(countdownTimer);
        document.getElementById('countdown').innerHTML = "Buzz Buzz";
    } else {
        seconds--;
    }
}
 
var countdownTimer = setInterval('secondPassed()', 1000);
</script>
    </body>
</html>
