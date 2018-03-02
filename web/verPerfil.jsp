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

        <!-- Compiled and minified JavaScript -->
        
    </head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        
        <jsp:include page="menu.jsp"></jsp:include>
        
        <div  style="height: 100%; width: 50%; margin-left: 25%">
            <h2>Mi Perfil</h2>
            <div class="row">
                <form class="col s12">
                    <div class="row">
                      <div class="input-field col s6">
                        <input placeholder="Placeholder" id="first_name" type="text" class="validate" value="${estudiante.nombre}">
                        <label for="first_name">Nombre</label>
                      </div>
                      <div class="input-field col s6">
                        <input id="last_name" type="text" class="validate" value="${estudiante.apellido}">
                        <label for="last_name">Apellido</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s6">
                        <input disabled id="disabled" type="number" 
                               class="validate" value="${estudiante.documento}">
                        <label for="disabled">Documento</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s12">
                        <input id="image" type="password" class="validate">
                        <label for="password">Password</label>
                      </div>
                    </div>

                    <div class="row">
                       <div class="col s8">
                       </div>
                      <div class="col s4">
                        <a class="waves-effect waves-light btn">
                            <i class="material-icons left">unarchive</i>
                            ACTUALIZAR
                        </a>
                      </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
