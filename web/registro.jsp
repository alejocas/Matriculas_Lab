<%-- 
    Document   : registro
    Created on : 1/03/2018, 10:17:58 PM
    Author     : josefo_1020
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <script src="js/materias.js"></script>

    </head>
    <body style="width: 100%;height: 100%;background-image: url('assets/img/forest-patrol.jpg');">
        
        
        
        <jsp:include page="menu.jsp"></jsp:include>
        <c:if test="${param.error==1}">
            <font color="red">Usuario Invalido. Intentelo de nuevo</font>
        </c:if>     
        <div class="container">
            <div class="row " style="margin-top: 5%;">
                <form action="EstudianteServlet?action=insert" method="post">
                    <div class="col s4 offset-s4 z-depth-5" style="background-color: white">
                        <div class="row">
                            <h1 class="center-align">Registro</h1>
                        </div>
                        <div class="row ">
                             <div class="input-field col s12">
                                 <input id="disabled" type="text" name="nombre" required
                                            class="validate" value="">
                                <label for="disabled">Nombre</label>
                             </div>
                         </div>
                         <div class="row ">
                             <div class="input-field col s12">
                                <input id="disabled" type="text" name="apellido" required
                                            class="validate" value="">
                                <label for="disabled">Apellido</label>
                             </div>
                         </div>
                        <div class="row ">
                             <div class="input-field col s12">
                                <input id="disabled" type="number" name="documento" required
                                            class="validate" value="">
                                <label for="disabled">Documento</label>
                             </div>
                         </div>
                        <div class="row ">
                             <div class="input-field col s12">
                                <input id="disabled" type="text" name="usuario" required
                                            class="validate" value="">
                                <label for="disabled">Nombre de Usuario</label>
                             </div>
                         </div>
                        <div class="row ">
                             <div class="input-field col s12">
                                <input id="disabled" type="text" name="contrasena" required
                                            class="validate" value="">
                                <label for="disabled">Contraseña</label>
                             </div>
                         </div>
                        <div class="row ">
                             <div class="file-field input-field col s12">
                                <div class="btn">
                                  <span>Foto</span>
                                  <input type="file" name="foto" required>
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text">
                                </div>
                              </div>
                         </div>
                        <br>
                        <div class="row">
                            <div class="col s6">
                                <button class="btn waves-effect waves-light" 
                                        type="submit" name="action" value="Registrarse">
                                    Ingresar
                                    <i class="material-icons right">send</i>
                                 </button>
                            </div>
                            <div class="col s6">
                                <button class="btn btn-block waves-effect waves-light" 
                                        type="reset" name="action" value="Resetear Datos">
                                    Resetear Datos
                                 </button>
                            </div>
                        </div>
                     </div>
                </form>             
            </div>
        </div>

    </body>
</html>