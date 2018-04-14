/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class Roles {
    public static String username;
    public static String password;
    public static String email;
    public static String sdt;
    public static String roles;

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        Roles.username = username;
    }

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String password) {
        Roles.password = password;
    }

    public static String getEmail() {
        return email;
    }

    public static void setEmail(String email) {
        Roles.email = email;
    }

    public static String getSdt() {
        return sdt;
    }

    public static void setSdt(String sdt) {
        Roles.sdt = sdt;
    }

    public static String getRoles() {
        return roles;
    }

    public static void setRoles(String roles) {
        Roles.roles = roles;
    }

    public Roles() {
    }
    
    public Roles(String username, String password, String email, String sdt, String roles){
        this.username=username;
        this.password=password;
        this.email=email;
        this.sdt=sdt;
        this.roles=roles;
    }
    
}
