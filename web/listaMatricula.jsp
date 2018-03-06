<%-- 
    Document   : listaMatricula
    Created on : 5/03/2018, 09:53:00 AM
    Author     : sadimfinity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        
        <div class="containerView">
       <div class="row">
            <div class="col s8">
                <%--<h3>Estudiante: ${estudiante.nombre} ${estudiante.apellido}</h3>
                <h6>Documento:  ${estudiante.documento}</h6>--%>
                <h6>Lista de materias matriculadas durante la historia académica</h6>
            </div>
            <div class="col s4">

            </div>
        </div>
            <div id="contenedor-lista-matricula" class="row">
                <table>
                    <thead>
                        <tr>
                            <th>Semestre</th>
                            <th>Código de Materia</th>
                            <th>Nombre de Materia</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${matriculas}" var="a">
                            <tr>
                                <c:set var="year" value="${a.fecha.year+1900}"/>
                                <c:choose>
                                    <c:when test="${a.fecha.month<7}">
                                        <c:set var="semestre" value="-1"/>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="semestre" value="-2"/>
                                    </c:otherwise>
                                </c:choose>
                                <td>
                                    ${year}${semestre}
                                </td>
                                <td>
                                    ${a.materia.idMateria}
                                </td>
                                <td>
                                    ${a.materia.nombreMateria}
                                </td>
                                <td>
                                    <a onclick="return confirm('¿Está seguro?')" href="MatriculaServlet?action=deleteMateria&idMateria=${a.materia.idMateria}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>        
</html>