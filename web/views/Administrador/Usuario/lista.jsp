<%@page import="java.util.ArrayList"%>
<%@page import="Model.Usuario_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../Index/header.jsp"%>
<%@include file ="../Index/menu2.jsp"%>
<%@include file ="../Index/menuCRUD.jsp"%>
<% 
    Usuario_Model user = new Usuario_Model();
    ArrayList<Usuario_Model> lista = user.getUsers();
%>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Listas de Usuarios</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Inicio</a></li>
              <li class="breadcrumb-item active">Pagina de lista de los usurios</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
          <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">CRUD de la tabla usuarios</h3>
          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button>
          </div>
        </div>
        <div class="card-body">
        <table border="1" class="table">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Fecha de nacimiento</th>
                    <th>Teléfono</th>
                    <th>Correo</th>
                    <th>Genero</th>
                    <th>Estado</th>
                    <th>Tipo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i < lista.size(); i++) { %>
                    <tr>
                        <td><%= lista.get(i).getNombre_user()%></td>
                        <td><%= lista.get(i).getApellido_user()%></td>
                        <td><%= lista.get(i).getFecha_nacimiento()%></td>
                        <td><%= lista.get(i).getTelefono()%></td>
                        <td><%= lista.get(i).getEmail()%></td>
                        <td><%= lista.get(i).getGenero()%></td>
                        <td><%= lista.get(i).getEstado()%></td>
                        <td><%= lista.get(i).getTipo_user()%></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        </div>
        <!-- /.card-body -->        
      </div>
      <!-- /.card -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@include file ="../Index/footer.jsp"%>