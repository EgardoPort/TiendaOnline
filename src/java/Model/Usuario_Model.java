package Model;

import java.sql.Connection;
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
    private Statement stmt = null;
    
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
            this.stmt = this.con.createStatement();
            ResultSet res = this.stmt.executeQuery("SELECT * FROM usuarios");
            
            while (res.next()) {
                Usuario_Model user = new Usuario_Model();
                
                //user.setId_usuarios(res.getInt("id"));
                user.setNombre_user(res.getString("nombre_user"));
                user.setApellido_user(res.getString("apellido_user"));
                user.setFecha_nacimiento(res.getDate("fecha_nacimiento"));
                user.setTelefono(res.getString("telefono"));
                user.setEmail(res.getString("email"));
                user.setEstado(res.getString("estado"));
                user.setGenero(res.getString("genero"));
                user.setTipo_user(res.getString("tipo_user"));
                
                list.add(user);
            }
        } catch (Exception e) {
            System.out.println("Error-SQL:getUsers");
        }
        return list;
    }
    
    // Método para agregar un nuevo usuario.
    public boolean agregarUser(){
        boolean resultado = false;
        
        try {
            String sql = "INSERT INTO usuarios (null, '"+this.nombre_user+"', '"+this.apellido_user+"','"+this.fecha_nacimiento+"', "
                    + "'"+this.telefono+"', '"+this.email+"','"+this.pass+"', '"+this.genero+"','"+this.estado+"', '"+this.tipo_user+"')";
            this.stmt = con.createStatement();
            
            resultado = (stmt.executeUpdate(sql) > 0) ? true : false;
            
        } catch (Exception e) {
            System.out.println("Error-Add new user." + e.getMessage());
        }
        return resultado;
    }
    
    public boolean actualizarUser(){
        boolean update = false;
        
        try {
            String sql = "UPDATE usuarios SET nombre_user='"+this.nombre_user+"', apellido_user='"+this.apellido_user+"',"
                    + "fecha_nacimiento='"+this.fecha_nacimiento+"', telefono='"+this.telefono+"', email='"+this.email+"',"
                    + "pass='"+this.pass+"', genero='"+this.genero+"', estado='"+this.estado+"', tipo_user='"+this.tipo_user+"'";
            this.stmt = con.createStatement();
            update = (stmt.executeUpdate(sql) > 0) ? true : false;
            
        } catch (Exception e) {
            System.out.println("Error-Update user." + e.getMessage());
        }
        return update;
    }
}
