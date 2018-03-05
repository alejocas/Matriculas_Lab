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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h1>Lista de materias matriculadas durante la historia académica</h1>
            <table border="1" align="center"  class="table table-hover">
                <thead>
                    <tr>
                        <th>Semestre</th>
                        <th>Código de Materia</th>
                        <th>Nombre de Materia</th>
                    </tr>
                </thead>
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
                <td>${year}${semestre}</td>
                <td>${a.materia.idMateria}</td>
                <td>${a.materia.nombreMateria}</td>     
            </tr>
            <hr/>
        </c:forEach>

    </table>

</html>