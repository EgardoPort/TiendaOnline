package Model;

import com.mysql.jdbc.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class Usuario_Model {
    private int id_usuarios;
    private String nombre_user;
    private String apellido_user;
    private Date fecha_nacimiento;
    private String telefono;
    private String email;
    private String pass;
    private String genero;
    private String estado;
    private String tipo_user;
    private Connection con = null;
    
    public Usuario_Model(){
        Conexion obj = new Conexion();
        this.con = obj.getConexion();
    }

    public int getId_usuarios() {
        return id_usuarios;
    }

    public void setId_usuarios(int id_usuarios) {
        this.id_usuarios = id_usuarios;
    }

    public String getNombre_user() {
        return nombre_user;
    }

    public void setNombre_user(String nombre_user) {
        this.nombre_user = nombre_user;
    }

    public String getApellido_user() {
        return apellido_user;
    }

    public void setApellido_user(String apellido_user) {
        this.apellido_user = apellido_user;
    }

    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTipo_user() {
        return tipo_user;
    }

    public void setTipo_user(String tipo_user) {
        this.tipo_user = tipo_user;
    }
    
    public ArrayList<Usuario_Model> getUsers(){
        ArrayList<Usuario_Model> list = new ArrayList();
        
        try {
            String sql = "SELECT * FROM usuarios";
            Statement stmt = this.con.createStatement();
            ResultSet res = stmt.executeQuery(sql);
            
            while (res.next()) {
                Usuario_Model user = new Usuario_Model();
                
                user.setId_usuarios(res.getInt("id"));
                user.setNombre_user(res.getString("nombre"));
                user.setApellido_user(res.getString("apellido"));
                user.setFecha_nacimiento(res.getDate("fecha"));
                user.setTelefono(res.getString("telefono"));
                user.setEmail(res.getString("correo"));
                user.setPass(res.getString("pass"));
                user.setGenero(res.getString("genero"));
                user.setTipo_user(res.getString("tipo"));
                
                list.add(user);
            }
        } catch (Exception e) {
            System.out.println("Error-SQL:getUsers");
        }
        return list;
    }
}
