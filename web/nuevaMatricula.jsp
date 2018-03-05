<%-- 
    Document   : nuevaMatricula
    Created on : 1/03/2018, 04:06:51 PM
    Author     : josefo_1020
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matricula</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" href="css/styles.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <script src="js/materias.js"></script>

    </head>
    <body style="width: 100%;height: 100%;background-image: url('assets/img/forest-patrol.jpg');">
        
        
        
        <jsp:include page="menu.jsp"></jsp:include>   
        <div class="container" style="background-color: white">
            
            
            <div class="row">
                <div class="col s8">
                    <h3>Estudiante: ${estudiante.nombre} ${estudiante.apellido}</h3>
                    <h6>Documento:  ${estudiante.documento}</h6>
                </div>
                <div class="col s4">
                    <button class="btn btn-block waves-effect waves-light" 
                            onclick="toggleMaterias()">
                        Mostrar Materias
                    </button>
                </div>
            </div>
            <div id="content-materias" class="row">
                <div class="col s8 offset-s2">
                    <table>
                        <thead>
                          <tr>
                              <th>Codigo</th>
                              <th>Nombre</th>
                              <th>Matricular</th>
                          </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="materia" items="${materias}">
                                <tr>
                                    <td>${materia.idMateria}</td>
                                    <td>${materia.nombreMateria}</td>
                                    <td>
                                        <button class="btn btn-block waves-effect waves-light" 
                                                onclick="getMaterias(${idMateria})">
                                            MATRICULAR
                                         </button>
                                    </td>
                                  </tr>


                            </c:forEach>

                        </tbody>
                      </table>
                </div>
            </div>

            
            <%--<div class="row " style="margin-top: 5%;">
                <form action="MateriaServlet?action=insert" method="post">
                    <div class="col s4 offset-s4 z-depth-5" style="background-color: white">
                        <div class="row">
                            <h1 class="center-align">Matricula</h1>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                <p>Ingrese los campos correctamente, por ejemplo, si necesita la materia Cálculo, digite el nombre 
                                completo: "Calculo Diferencial"</p>
                            </div>

                        </div>
                        <div class="row ">
                             <div class="input-field col s12">
                                 <input id="disabled" type="text" name="nombreMateria" required
                                            class="validate" value="">
                                <label for="disabled">Materia</label>
                             </div>
                         </div>
                        <br>
                        <div class="row">
                            <div class="col s6">
                                <button class="btn waves-effect waves-light" 
                                        type="submit" name="action" value="Insertar">
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
                
            </div>--%>
        </div>

    </body>
