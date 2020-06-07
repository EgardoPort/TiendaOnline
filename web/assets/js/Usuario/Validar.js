$(document).ready(function () {
    $('#telefono').mask('9999-9999');
    $('#enviar').on('click', function () {
        var pass = $('#contra').val();
        var pass2 = $('#contra2').val();
        var nombre = $('#nombre').val();
        var apellido = $('#apellido').val();
        var fecha = $('#fecha').val();
        var telefono = $('#telefono').val();
        var correo = $('#correo').val();
        var estado = $('#estado').val();
        var genero = $('#genero').val();
        var tipo = $('#tipo').val();
        var re = /^[A-Za-zÁÉÍÓÚáéíóúñÑ]+$/g;
        var reCo = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])*(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;

        if (nombre && apellido && fecha && telefono && correo && estado && genero && tipo !== '') {
            if (re.test(nombre)) {
                if (re.test(apellido)) {
                    if (reCo.test(correo)) {
                        if (pass === pass2) {
                            Swal.fire({
                                title: "Registro guardado!",
                                text: "El usuario ha sido registrado!",
                                icon: "success",
                                timer: 1500
                            }).then(function () {
                                window.location.href = "/Tienda/views/Administrador/Usuario/lista.jsp";
                            });
                        } else {
                            Swal.fire({
                                title: "Error!",
                                text: "Las contraseñas no coinciden!",
                                icon: "error",
                                button: "Aww yiss!"
                            });
                        }
                    } else {
                        Swal.fire({
                            title: "Error!",
                            text: "No parece ser un correo electrónico!",
                            icon: "error",
                            timer: 1500
                        });
                    }
                } else {
                    Swal.fire({
                        title: "Error!",
                        text: "Sólo se permiten letras!",
                        icon: "error",
                        timer: 1500
                    });
                }
            } else {
                Swal.fire({
                    title: "Error!",
                    text: "Sólo se permiten letras!",
                    icon: "error",
                    timer: 1500
                });
            }
        } else {
            Swal.fire({
                title: "Error!",
                text: "Todos los campos son requeridos!",
                icon: "error",
                button: "Aww yiss!"
            });
        }
    });
});