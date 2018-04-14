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
public class Products {
    Connection con = ConnectionDB.getConn();
    public Products() {
    }
    public List<Product> showProduct(String tensp) {
        Connection con = ConnectionDB.getConn();
        try {           
            String sql = "select * from Products";
            if (tensp.length() > 0) {
                sql += " where Name like '%" + tensp + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString(1);
                String name = rs.getString(2);
                float price = rs.getFloat(3);
                String img = rs.getString(4);
                Product sp = new Product(code, name, price, img);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void delete(String masp) {
        try {
            String sql = "delete from Products where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insert(String masp, String tensp, float gia, String ha) {
        try {
            String sql = "insert into Products values(?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.setString(2, tensp);
            stm.setFloat(3, gia);
            stm.setString(4, ha);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(String masp, String tensp, float gia, String img) {
        try {
            String sql = "update Products set Name=?, Price=?, Image=? where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(3, masp);
            stm.setString(1, tensp);
            stm.setFloat(2, gia);
            stm.setString(4, img);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
