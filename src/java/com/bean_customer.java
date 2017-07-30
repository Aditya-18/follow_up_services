/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.*;

import java.text.SimpleDateFormat;
/**

/**
 *
 * @author Aditya Goel
 */
public class bean_customer {
     String FirstName,MiddleName,LastName,Phone,Mobile,Source,Email,Fax,TwitterId, StreetAddress, City, State, Country, Comment, Eid;
     Date DateTime;

    public String getFirstName() {
        return FirstName;
    }


    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getMiddleName() {
        return MiddleName;
    }

    public void setMiddleName(String MiddleName) {
        this.MiddleName = MiddleName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getMobile() {
        return Mobile;
    }

    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    public String getSource() {
        return Source;
    }

    public void setSource(String Source) {
        this.Source = Source;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFax() {
        return Fax;
    }

    public void setFax(String Fax) {
        this.Fax = Fax;
    }

    public String getTwitterId() {
        return TwitterId;
    }

    public void setTwitterId(String TwitterId) {
        this.TwitterId = TwitterId;
    }

    public String getStreetAddress() {
        return StreetAddress;
    }

    public void setStreetAddress(String StreetAddress) {
        this.StreetAddress = StreetAddress;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String Comment) {
        this.Comment = Comment;
    }
    
    public Date getDateTime() {
        return DateTime;
    }

    public void setDateTime(Date DateTime) {
        this.DateTime = DateTime;
    }

    public String getEid() {
        return Eid;
    }

    public void setEid(String Eid) {
        this.Eid = Eid;
    }
    
    
    public ArrayList view()
     {
                
         ArrayList list=new ArrayList();
        connection cc=new connection();
        cc.create_connection();
        try{
           
            ResultSet r=cc.stmt.executeQuery("Select * from customer");
            while(r.next())
            {
                bean_customer b1=new bean_customer();
                b1.setCity(r.getString("City"));
                b1.setComment(r.getString("Comment"));
                b1.setCountry(r.getString("Country"));
                b1.setEmail(r.getString("Email"));
                b1.setFax(r.getString("Fax"));
                b1.setFirstName(r.getString("Firstname"));
                b1.setLastName(r.getString("LastName"));
                b1.setMiddleName(r.getString("MiddleName"));
                b1.setMobile(r.getString("Mobile"));
                b1.setPhone(r.getString("Phone"));
                b1.setSource(r.getString("Source"));
                
                b1.setState(r.getString("State"));
                b1.setStreetAddress(r.getString("StreetAddress"));
                b1.setTwitterId(r.getString("TwitterId"));
                b1.setEid(r.getString("Eid"));
             //   Date dt=new Date(r.getTime("Time").toString());
                java.util.Date date;
                Timestamp timestamp = r.getTimestamp("Time");
                
//                String time = r.getString("Time");
                b1.setDateTime(timestamp);
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
    
      public ArrayList assignCustomers()
     {
                  
         ArrayList list=new ArrayList();
        connection cc=new connection();
        cc.create_connection();
        try{
            ResultSet r=cc.stmt.executeQuery("Select * from `customer` where DATE(Time) = CURDATE()");
            while(r.next())
            {
                bean_customer b1=new bean_customer();
                b1.setCity(r.getString("City"));
                b1.setComment(r.getString("Comment"));
                b1.setCountry(r.getString("Country"));
                b1.setEmail(r.getString("Email"));
                b1.setFax(r.getString("Fax"));
                b1.setFirstName(r.getString("Firstname"));
                b1.setLastName(r.getString("LastName"));
                b1.setMiddleName(r.getString("MiddleName"));
                b1.setMobile(r.getString("Mobile"));
                b1.setPhone(r.getString("Phone"));
                b1.setSource(r.getString("Source"));
                
                b1.setState(r.getString("State"));
                b1.setStreetAddress(r.getString("StreetAddress"));
                b1.setTwitterId(r.getString("TwitterId"));
                b1.setEid(r.getString("Eid"));
             //   Date dt=new Date(r.getTime("Time").toString());
                java.util.Date date;
                Timestamp timestamp = r.getTimestamp("Time");
                
//                String time = r.getString("Time");
                b1.setDateTime(timestamp);
//                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                Calendar cal  = Calendar.getInstance();
//                cal.setTime(df.parse(time));
                list.add(b1);
                
            }
            cc.conn.close();
            
        }catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
        return list;
        }
     
}
