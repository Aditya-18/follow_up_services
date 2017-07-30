/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author HP
 */
public class connection {
     public Connection conn=null;
    public Statement stmt;
    public void create_connection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            stmt=conn.createStatement();
        }catch(ClassNotFoundException e){
            System.out.println(e.getMessage());
        } catch (SQLException e) {
            System.out.println(e.getMessage());
         }
    }
    
}

