/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Database.ConnectionDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Customers {

    Connection con = ConnectionDB.getConn();

    public Customers() {
    }

    public boolean checkLogin(String username, String password) {
        try {
            String sql = "select * from Customers where Username=? and Password=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean exist = false;
            if (rs.next()) {
                String user = rs.getString(1);
                String pass = rs.getString(2);
                String email = rs.getString(3);
                String sdt = rs.getString(4);
                String roles = rs.getString(5);
                Roles a = new Roles(user, pass, email, sdt, roles);
                return exist = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Customer> showAcc(String usern) {
        try {

            String sql = "Select * from Customer";
            if (usern.length() > 0) {
                sql += "where name like '%" + usern + "%'";

            }
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            List<Customer> list = new ArrayList<Customer>();
            while (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                String sdt = rs.getString("sdt");
                Boolean roles = rs.getBoolean("roles");
                String a = String.valueOf(roles);
                Customer sp = new Customer(username, password, email, sdt, a);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public boolean insert(String username, String password, String email, String sdt, boolean roles){
        try {
            String sql = "insert into Customer values(?,?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, email);
            stm.setString(4, sdt);
            stm.setBoolean(5, roles);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public void delete(String username) {
        try {
            String sql = "delete from Customer where username = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
