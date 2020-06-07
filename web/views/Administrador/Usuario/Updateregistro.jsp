<%-- 
    Document   : Nuevoregistro
    Created on : 05-02-2020, 10:20:43 PM
    Author     : arace
--%>
<%@page import="Model.Usuario_Model"%>
<%@page import="java.sql.ResultSet"%>
<%    Model.Usuario_Model user = new Usuario_Model();
    int id = 1;
    id = Integer.parseInt(request.getParameter("id"));
    ResultSet res = user.usuarioById(id);
    res.next();
    
    String eA = (res.getString("estado").equals("1"))? "selected":"";
    String eI = (res.getString("estado").equals("0"))? "selected":"";
    
    String gM = (res.getString("genero").equals("M"))? "selected":"";
    String gF = (res.getString("genero").equals("F"))? "selected":"";
    
    String tA = (res.getString("tipo_user").equals("Administrador"))? "selected":"";
    String tE = (res.getString("tipo_user").equals("Estandar"))? "selected":"";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    </head>
    <body>
        <section class="content">
            <div class="card">
                <div class="card-header">
                    <!-- Button trigger modal -->
                    <h3>Actualizar Usuario</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/usuario.do" method="POST">
                        <input type="hidden" name="id" value="<%= id%>">
                        <input type="hidden" name="accion" value="update">
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="nombre" name="nombre" value="<%= res.getString("nombre_user")%>" required placeholder="Nombre"/>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="apellido" name="apellido" value="<%= res.getString("apellido_user")%>" required placeholder="Apellidos"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="date" class="form-control" id="fecha" name="fecha" value="<%= res.getString("fecha_nacimiento")%>" required placeholder="Fecha nacimiento"/>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="telefono" name="telefono" value="<%= res.getString("telefono")%>" required placeholder="Teléfono"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="email" class="form-control" id="correo" name="correo" value="<%= res.getString("email")%>" required placeholder="Correo eléctronico"/>
                            </div>
                            <div class="col-sm-6">
                                <select name="estado" class="custom-select" id="estado">
                                    <option selected="" disabled="">---Seleccionar estado---</option>
                                    <option name="estado" <%= eA %> value="1">Activo</option>
                                    <option name="estado" <%= eI %> value="0">Inactivo</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <select class="custom-select" name="genero" id="genero">
                                    <option selected="" disabled="">---Seleccionar género---</option>
                                    <option name="genero" <%= gM %> value="M">Masculino</option>
                                    <option name="genero" <%= gF %> value="F">Femenino</option>
                                </select>
                            </div>
                            <div class="col-sm-6">
                                <select class="custom-select" name="tipo" id="tipo">
                                    <option selected="" disabled="">---Seleccionar permisos---</option>
                                    <option name="tipo" <%= tA %> value="Administrador">Administrador</option>
                                    <option name="tipo" <%= tE %> value="Estandar">Estandar</option>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="lista.jsp" class="btn btn-secondary">Volver</a>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js"></script>
        <script> 
            $("#telefono").mask("9999-9999");
        </script>
    </body>
</html>
