<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Usuario_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../Index/header.jsp"%>
<%@include file ="../Index/menu2.jsp"%>
<%@include file ="../Index/menuCRUD.jsp"%>

<%    Usuario_Model user = new Usuario_Model();
    ArrayList<Usuario_Model> lista = user.getUsers();

    HttpSession se = request.getSession();
    if (se.getAttribute("tipo_user") == null) {
        response.sendRedirect(request.getContextPath() + "/Login.jsp");
    } else {
        String tipo = se.getAttribute("tipo_user").toString();
        if (!tipo.equals("Administrador")) {
            response.sendRedirect(request.getContextPath() + "/Login.jsp");
        }
    }
%>

<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head>
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
                        <li class="breadcrumb-item active">Pagina de lista de los usuarios</li>
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
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Nuevo usuario
                </button>
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
                            <th>Estado</th>
                            <th>Genero</th>
                            <th>Tipo</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 0; i < lista.size(); i++) {
                                String gene = (lista.get(i).getGenero().equals("M")) ? "Masculino" : "Femenino";
                                String esta = (lista.get(i).getEstado().equals("1")) ? "Activo" : "Inactivo";
                        %>
                        <tr>
                            <td><%= lista.get(i).getNombre_user()%></td>
                            <td><%= lista.get(i).getApellido_user()%></td>
                            <td><%= lista.get(i).getFecha_nacimiento()%></td>
                            <td><%= lista.get(i).getTelefono()%></td>
                            <td><%= lista.get(i).getEmail()%></td>
                            <td><%= esta%></td>
                            <td><%= gene%></td>
                            <td><%= lista.get(i).getTipo_user()%></td>
                            <td colspan="1">
                                <a href="Updateregistro.jsp?id=<%= lista.get(i).getId_usuarios()%>">Actualizar</a>
                                <a href="${pageContext.request.contextPath}/usuario.do?accion=cambiar&id=<%= lista.get(i).getId_usuarios()%>&email=<%= lista.get(i).getEmail()%>">Eliminar</a>
                            </td>
                        </tr>
                        <% }%>
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
<!-- Modal para nuevo usuario -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar usuario</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/usuario.do" method="POST">
                    <input hidden="" name="accion" value="saveAdmin">
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="nombre" name="nombre" required placeholder="Nombre"/>
                        </div>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="apellido" name="apellido" required placeholder="Apellidos"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <input type="date" class="form-control" id="fecha" name="fecha" required placeholder="Fecha nacimiento"/>
                        </div>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="telefono" name="telefono" required placeholder="Teléfono"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <input type="email" class="form-control" id="correo" name="correo" required placeholder="Correo eléctronico"/>
                        </div>
                        <div class="col-sm-6">
                            <select name="estado" class="custom-select" id="estado">
                                <option selected="" disabled="">---Seleccionar estado---</option>
                                <option name="estado" value="1">Activo</option>
                                <option name="estado" value="0">Inactivo</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <select class="custom-select" name="genero" id="genero">
                                <option selected="" disabled="">---Seleccionar género---</option>
                                <option name="genero" value="M">Masculino</option>
                                <option name="genero" value="F">Femenino</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <select class="custom-select" name="tipo" id="tipo">
                                <option selected="" disabled="">---Seleccionar permisos---</option>
                                <option name="tipo" value="Administrador">Administrador</option>
                                <option name="tipo" value="Estandar">Estandar</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <input type="password" id="contra" class="form-control" required name="pass" placeholder="Contraseña"/>
                        </div>
                        <div class="col-sm-6">
                            <input type="password" id="contra2" class="form-control" required placeholder="Repetir contraseña"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <button type="submit" id="enviar"  class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file ="../Index/footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="../../../assets/js/Usuario/Validar.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js"></script>
<script>
</script>