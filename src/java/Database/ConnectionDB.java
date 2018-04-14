/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class ConnectionDB {
     public static Connection getConn() {
        try {
            String connectionUrl
                    = "jdbc:sqlserver://ps05456asm.database.windows.net:1433;database=INF205_ps05456_ASM;"
                    +"user=huuvqps05456@ps05456asm;"
                    +"password=Vqh851219***";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con
                    = DriverManager.getConnection(connectionUrl);
            return con;
        } catch (ClassNotFoundException | SQLException ex) {
        }
        return null;
    }
}
