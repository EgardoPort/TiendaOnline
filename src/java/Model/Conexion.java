package Model;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

public class Conexion {
    private String host = "jdbc:mysql://localhost/tiendaorakle";
    private Connection con = null;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.con = (Connection) DriverManager.getConnection(this.host, "root", "");
        } catch (Exception e) {
            System.out.println("Error-Conexion: " + e.getMessage());
        }
    }
    
    public Connection getConexion(){
        return this.con;
    }
}