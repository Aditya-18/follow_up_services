/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author pankaj
 */
public class bean_done {
    String Eid,Emp_name,Customer_firstName,Customer_middleName,Customer_lastName,Issue;
    Date Time;

    public String getEid() {
        return Eid;
    }

    public void setEid(String Eid) {
        this.Eid = Eid;
    }

    public String getEmp_name() {
        return Emp_name;
    }

    public void setEmp_name(String Emp_name) {
        this.Emp_name = Emp_name;
    }

    public String getCustomer_firstName() {
        return Customer_firstName;
    }

    public void setCustomer_firstName(String Customer_firstName) {
        this.Customer_firstName = Customer_firstName;
    }

    public String getCustomer_middleName() {
        return Customer_middleName;
    }

    public void setCustomer_middleName(String Customer_middleName) {
        this.Customer_middleName = Customer_middleName;
    }

    public String getCustomer_lastName() {
        return Customer_lastName;
    }

    public void setCustomer_lastName(String Customer_lastName) {
        this.Customer_lastName = Customer_lastName;
    }

    public String getIssue() {
        return Issue;
    }

    public void setIssue(String Issue) {
        this.Issue = Issue;
    }

    public Date getTime() {
        return Time;
    }

    public void setTime(Date Time) {
        this.Time = Time;
    }
     public ArrayList view()
     {
                
         ArrayList list=new ArrayList();
        connection cc=new connection();
        cc.create_connection();
        try{
           
            ResultSet r=cc.stmt.executeQuery("Select * from done");
            while(r.next())
            {
                bean_done b1=new bean_done();
                b1.setEid(r.getString("Eid"));
                b1.setEmp_name(r.getString("Emp_name"));
                
                
                
                b1.setCustomer_firstName(r.getString("Customer_firstname"));
                b1.setCustomer_lastName(r.getString("Customer_lastName"));
                b1.setCustomer_middleName(r.getString("Customer_middleName"));
                
               b1.setIssue(r.getString("Issue"));
              
               
               
                
              
             //   Date dt=new Date(r.getTime("Time").toString());
                java.util.Date date;
Timestamp timestamp = r.getTimestamp("Time");
                
//                String time = r.getString("Time");
                b1.setTime(timestamp);
//                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                Calendar cal  = Calendar.getInstance();
//                cal.setTime(df.parse(time));
                list.add(b1);
                
            }
            cc.conn.close();
            
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return list; 
        }

}
