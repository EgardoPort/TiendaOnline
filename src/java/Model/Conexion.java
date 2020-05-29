package Model;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

public class Conexion {
    private String driver = "com.mysql.jdbc.Driver";
    private String host = "jdbc:mysql://localhost/certificacion1";
    private String user = "root";
    private String pass = "";
    private Connection con = null;
    
    public Conexion(){
        try {
            Class.forName(this.driver);
            this.con = (Connection) DriverManager.getConnection(this.host, this.user, this.pass);
        } catch (Exception e) {
            System.out.println("Error-Conexion: "+e.getMessage());
        }
    }
    
    public Connection getConexion(){
        return this.con;
    }
}