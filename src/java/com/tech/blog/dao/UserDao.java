/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;

import java.sql.*;
import com.tech.blog.entities.User;

public class UserDao {
    private Connection con;
    public UserDao(Connection con){
        
        this.con=con;
        
    }
    //method to insert user to data base
    public boolean saveUser(User user){
            boolean f=false;
            
            try{
    //user data to database
    String query="insert into user(name,email,password,gender,about) value(?,?,?,?,?)";
    PreparedStatement pstmt=this.con.prepareStatement(query);
    pstmt.setString(1,user.getName());
    pstmt.setString(2,user.getEmail());
    pstmt.setString(3, user.getPassword());
    pstmt.setString(4, user.getGender());
    pstmt.setString(5, user.getAbout());
    pstmt.executeUpdate();
    f=true;
}catch(Exception e)
{
    e.printStackTrace();
}
   return f; }


//get user by useremail and userpassword

public User getUserByEmailAndPassword(String email,String password){
User user=null;

try{
String query="select * from user where email=? and password=?";
PreparedStatement pstmt=con.prepareStatement(query);
pstmt.setString(1,email);
pstmt.setString(2,password);
ResultSet set=pstmt.executeQuery();
if(set.next())
{
user= new User();
//data from db
String name=set.getString("name");
//set to user object
user.setName(name);

user.setId(set.getInt("id"));
user.setEmail(set.getString("email"));
user.setGender(set.getString("gender"));
user.setAbout(set.getString("about"));
user.setProfile(set.getString("profile"));
}
}catch (Exception e){
e.printStackTrace();
}
return user;

}
}
