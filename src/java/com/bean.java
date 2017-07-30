/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;
import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/**
 *
 * @author Aditya Goel
 */
public class bean {
    String Eid,Password,Fname,Lname,Company,LeadOwner,Email,Website,Industry,Twitter,Skype,Street,City,State,Zip,Country,Mobile;
    int Phone;

    public String getMobile() {
        return Mobile;
    }

    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    public String getEid() {
        return Eid;
    }

    public void setEid(String Eid) {
        this.Eid = Eid;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    

    public String getFname() {
        return Fname;
    }

    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public String getLname() {
        return Lname;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String Company) {
        this.Company = Company;
    }

    public String getLeadOwner() {
        return LeadOwner;
    }

    public void setLeadOwner(String LeadOwner) {
        this.LeadOwner = LeadOwner;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getWebsite() {
        return Website;
    }

    public void setWebsite(String Website) {
        this.Website = Website;
    }

    public String getIndustry() {
        return Industry;
    }

    public void setIndustry(String Industry) {
        this.Industry = Industry;
    }

    public String getTwitter() {
        return Twitter;
    }

    public void setTwitter(String Twitter) {
        this.Twitter = Twitter;
    }

    public String getSkype() {
        return Skype;
    }

    public void setSkype(String Skype) {
        this.Skype = Skype;
    }

    public String getStreet() {
        return Street;
    }

    public void setStreet(String Street) {
        this.Street = Street;
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

    public String getZip() {
        return Zip;
    }

    public void setZip(String Zip) {
        this.Zip = Zip;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public int getPhone() {
        return Phone;
    }

    public void setPhone(int Phone) {
        this.Phone = Phone;
    }

   
    
    public String save(bean b){
        String msg=null;
        String r="employee";
       connection cc=new connection();
       cc.create_connection();
       try{
       int x=cc.stmt.executeUpdate("insert into register (City,Company,Country,Eid,Email,Fname,Industry,LeadOwner,Lname,Password,Skype,State,Street,Twitter,Website,Zip,Mobile,Phone) values ('"+b.City+"','"+b.Company+"','"+b.Country+"','"+b.Eid+"','"+b.Email+"','"+b.Fname+"','"+b.Industry+"','"+b.LeadOwner+"','"+b.Lname+"','"+b.Password+"','"+b.Skype+"','"+b.State+"','"+b.Street+"','"+b.Twitter+"','"+b.Website+"','"+b.Zip+"','"+b.Mobile+"','"+b.Phone+"')");
       if(x>0)
       {
           msg="data saved successfully";
       }
       cc.conn.close();
       }
       catch(Exception e)
       {
           msg="data  not saved successfully"+e;
       }
       
       return msg;      
    }
    
     public boolean  valid(bean b)
   {
       boolean result=false;
       try{
         connection cc=new connection();
         ResultSet rs=cc.stmt.executeQuery("select * from register");
         if(rs.next())
         {
            // if(((rs.getString("id")).equalsIgnoreCase(b.name))&&((rs.getString("password")).equalsIgnoreCase(b.pass))){
              if(true){  
                 
                 result=true;
             }
          
         }
         cc.conn.close();
       }
       catch(Exception ex)
       {
           System.out.print(ex);
       }
       return result;
   }
     public String delete(bean b)
    {
       
        String msg=null;
        connection cc=new connection();
        cc.create_connection();
        
        try{
            
            int a=cc.stmt.executeUpdate("delete from register where Eid='"+b.Eid+"'");
            int h=cc.stmt.executeUpdate("delete from login where Eid='"+b.Eid+"'");
            if(a==1)
            {
                msg="data deleted";
            }
            else
            {
                msg="data not deleted";
            }cc.conn.close();
            
        }catch(Exception e2)
        {
            msg=e2.getMessage();
        }
        return msg;
        
        
    }
     public ArrayList view()
     {
                
         ArrayList list=new ArrayList();
        connection cc=new connection();
        cc.create_connection();
        try{
           
            ResultSet r=cc.stmt.executeQuery("Select * from register");
            while(r.next())
            {
                bean b1=new bean();
                b1.setEid(r.getString("Eid"));
                b1.setCity(r.getString("City"));
                b1.setCompany(r.getString("Company"));
                b1.setCountry(r.getString("Country"));
                b1.setEmail(r.getString("Email"));
                b1.setFname(r.getString("Fname"));
                b1.setIndustry(r.getString("Industry"));
                b1.setLeadOwner(r.getString("LeadOwner"));
                b1.setLname(r.getString("Lname"));
                b1.setMobile(r.getString("Mobile"));
                b1.setPassword(r.getString("Password"));
                b1.setPhone(r.getInt("Phone"));
                b1.setSkype(r.getString("Skype"));
                b1.setState(r.getString("State"));
                b1.setStreet(r.getString("Street"));
                b1.setTwitter(r.getString("Twitter"));
                b1.setWebsite(r.getString("Website"));
                b1.setZip(r.getString("Zip"));
                list.add(b1);
                
            }
            cc.conn.close();
            
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return list; 
        }
     public static void main(String[] args)
     {
     bean b2=new bean();
         List  l=b2.view();
             
            Iterator it=l.iterator();
             while(it.hasNext())
             {
                bean b1=(bean)it.next();
               System.out.print(b1.getEid()+" "+b1.getCity()+"  "+b1.getCompany());
             }
     
     }
}
