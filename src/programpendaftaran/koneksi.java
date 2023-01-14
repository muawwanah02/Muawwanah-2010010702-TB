/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programpendaftaran;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author muawwanah
 */
public class koneksi {
    
    private static Connection MySQLkoneksi;
    
    public static Connection koneksiDB() throws SQLException{
        try{
            String url = "jdbc:mysql://localhost:3306/db_pendaftaran";
            String user = "root";
            String pass = "";
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            MySQLkoneksi = DriverManager.getConnection(url, user, pass);
        }catch(SQLException e) {
            System.out.println("Koneksi Gagal" + e.getMessage());
        }
        return MySQLkoneksi;
    }
}
