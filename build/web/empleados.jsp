<%-- 
    Document   : empleados
    Created on : 8/09/2024, 11:08:25 a. m.
    Author     : josej
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Empleados</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="https://umg.edu.gt" target="_blank">UMG</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Menu
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="empleados.jsp">Empleados</a></li>
                                    <li><a class="dropdown-item" href="#">Clientes</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Puestos</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
        <h1>Formulario Empleados</h1>
        <div class="container">
            <form action="#" method="get" class="form-group needs-validation" novalidate>
                <label for="lbl_id" class="form-label"><b>ID</b></label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <label for="lbl_codigo" class="form-label"><b>Codigo</b></label>
                <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Eje: E001" pattern="[E]{1}[0-9]{2}[1-9]{1]" required>
                <label for="lbl_nombres" class="form-label"><b>Nombres</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Eje: Nombre1 Nombre2" required>
                <label for="lbl_apellidos" class="form-label"><b>Apellidos</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Eje: Apellido1 Apellido2" required>
                <label for="lbl_direccion" class="form-label"><b>Direccion</b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Eje: Direccion1" required>
                <label for="lbl_telefono" class="form-label"><b>Telefono</b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Eje: 123456" required>
                <label for="lbl_fn" class="form-label"><b>Nacimiento</b></label>
                <input type="date" name="txt_fn" id="txt_fn" class="form-control" placeholder="Eje: yyyy-MM-DD" required>
                <label for="lbl_fn" class="form-label"><b>Puesto</b></label>
                <select name="drop_puesto" id="drop_puesto" class="form-select" required>
                    <option selected disabled value="">Seleccione</option>
                    <option value="1">Programador</option>
                    <option value="2">Analista</option>
                    <option value="3">QA</option>
                </select>
                <br>
                <button name="btn_crear" id="btn_crear" value="crear" class="btn btn-primary"><i class="bi bi-floppy-fill"></i> Crear</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-warning"><i class="bi bi-pencil-fill"></i> Modificar</button>
                <button name="btn_borrar" id="btn_borrar" value="borrar" class="btn btn-danger"><i class="bi bi-trash-fill"></i> Borrar</button>


            </form>
        </div>

        <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict';

                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.querySelectorAll('.needs-validation');

                // Loop over them and prevent submission
                Array.prototype.slice.call(forms)
                        .forEach(function (form) {
                            form.addEventListener('submit', function (event) {
                                if (!form.checkValidity()) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                }

                                form.classList.add('was-validated');
                            }, false);
                        });
            })();
        </script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
