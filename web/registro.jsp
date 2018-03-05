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
         <link rel="stylesheet" href="css/styles.css">
    </head>
    <body style="width: 100%;height: 100%;background-image: url('assets/img/forest-patrol.jpg');">



        <jsp:include page="menu.jsp"></jsp:include>
        <c:if test="${param.error==1}">
            <font color="red">Usuario Invalido. Intentelo de nuevo</font>
        </c:if>     
        <div class="container">
            <div class="row " style="margin-top: 5%;">
                <form action="EstudianteServlet?action=insert" method="post" enctype="multipart/form-data">
                    <div class="col s6 offset-s3 z-depth-5" style="background-color: white; opacity: 0.9;"  >
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
                                <input id="password" type="password" name="contrasena" required
                                       class="validate" value="">
                                <label for="disabled">Contraseña</label>
                            </div>
                        </div>
                        <div class="row " >
                            <div class="file-field input-field col s12">
                                <div class="btn red accent-2">
                                  <span>Foto</span>
                                  <input id="imageUpload" type="file"  name="file">
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text">
                                </div>
                              </div>

                        <%--<div class="input-field col 12">
                                

                                
                                <input id="imageUpload" type="file"  name="file"/>
                                </input>                              

                            </div>--%>
                        </div>

                        <div class="row">
                            <div class="col s6">
                                <button class="btn waves-effect red accent-2" 
                                        type="submit" name="EstudianteServlet?action=insert" value="Registrarse">
                                    Ingresar
                                    <i class="material-icons right">send</i>
                                </button>
                            </div>
                            <!--<button id="holamundo" class="btn btn-block waves-effect waves-light" 
                                    type="reset">
                                Reanudar 
                            </button>-->

                        </div>

                    </div>
                </form> 
            </div>

        </div>
    </div>


</html>