<%-- 
    Document   : login
    Created on : 1/03/2018, 04:04:22 PM
    Author     : josefo_1020
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
         <link rel="stylesheet" href="css/styles.css">
    </head>
    <body style="width: 100%;height: 100%;background-image: url('assets/img/forest-patrol.jpg');">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
     
        <jsp:include page="menu.jsp"></jsp:include>
        <c:if test="${param.error==1}">
            <font color="red">Usuario Invalido. Intentelo de nuevo</font>
        </c:if>     
        <div class="container">
            <div class="row " style="margin-top: 20%;">
                <form action="EstudianteServlet?action=login" enctype="multipart/form-data" method="post">
                    <div class="col s6 offset-s3 z-depth-5" style="background-color: white; opacity: 0.9;">
                        <div class="row">
                            <h1 class="center-align">Ingreso</h1>
                        </div>
                        <div class="row ">
                             <div class="input-field col s12">
                                 <input id="disabled" type="text" name="username" required
                                            class="validate" value="">
                                <label for="disabled">Usuario</label>
                             </div>
                            
                         </div>
                         <div class="row ">
                             <div class="input-field col s12">
                                
                                <input id="password" type="password" name="password" required
                                            class="validate" value="">
                                <label for="disabled">Contraseña</label>
                             </div>
                         </div>
                        <br>
                        <div class="row">
                            <div class="col s6">
                                <button class="btn waves-effect red accent-2" 
                                        type="submit" name="EstudianteServlet?action=insert" value="Ingresar">
                                    Ingresar
                                    <i class="material-icons right">send</i>
                                 </button>
                            </div>
                           <!-- <div class="col s6">
                                <button class="btn btn-block waves-effect red accent-2" 
                                        type="reset" name="action" value="Resetear Datos">
                                    Reanudar datos
                                 </button>
                            </div>-->
                        </div>
                     </div>
                </form>             
            </div>
        </div>
    </body>
</html>
