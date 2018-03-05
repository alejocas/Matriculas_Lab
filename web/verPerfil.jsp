<%-- 
    Document   : verPerfil
    Created on : 2/03/2018, 12:33:53 AM
    Author     : josefo_1020
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <!-- Compiled and minified JavaScript -->

    </head>
    <body style="width: 100%;height: 100%;background-image: url('assets/img/forest-patrol.jpg');">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

        <jsp:include page="menu.jsp"></jsp:include>
        
            <div style="height: 100%; width: 50%; margin-left: 25%; background-color: white; opacity: 0.9;">
                <h2>Mi Perfil</h2>
                <div class="row">
                    <div class="col s12 m4 l3"> 
                        <img class="responsive-img" src="${foto}">
                
                </div>

                <div class="col s12 m8 l9"> 
                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <input  placeholder="Placeholder" id="first_name" type="text" class="validate" disabled value="${estudiante.nombre}">
                                <label for="first_name">Nombre</label>
                            </div>
                            <div class="input-field col s6">
                                <input  id="last_name" type="text" class="validate" disabled value="${estudiante.apellido}">
                                <label for="last_name">Apellido</label>
                            </div>
                        </div>


                        <div class="row">

                            <div class="input-field col s6">
                                <input id="usuario" type="text" class="validate" disabled value="${estudiante.usuario}">
                                <label for="usuario">Usuario</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="image" type="password" class="validate"disabled value="${estudiante.contraseña}">
                                <label for="password">Password</label>
                            </div>
                        </div>

                    </form>

                </div>

            </div>

        </div>
    </body>
</html>
