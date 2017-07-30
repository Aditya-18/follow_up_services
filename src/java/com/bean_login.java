/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;
import java.sql.*;
/**
 *
 * @author HP
 */
public class bean_login {
    String Eid,Password;

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
    
   
    
   
    public String search(bean_login b)
    {
        String x="not logged in";
       connection cc=new connection();
       cc.create_connection();
        try{
          
            ResultSet r=cc.stmt.executeQuery("Select * from login where Eid='"+b.Eid+"' and Password='"+b.Password+"'");
            while(r.next())
            {
               x=r.getString("Type");
               
            }
        
            
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
       return x;
    }
    public String save(bean_login b){
        String msg=null;
        String r="employee";
       connection cc=new connection();
       cc.create_connection();
       try{
       int y=cc.stmt.executeUpdate("insert into login(Eid,Password,Type) values('"+b.Eid+"','"+b.Password+"','"+r+"')");
      
       if(y>0)
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
}

