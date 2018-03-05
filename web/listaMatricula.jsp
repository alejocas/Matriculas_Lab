<%-- 
    Document   : listaMatricula
    Created on : 1/03/2018, 04:03:40 PM
    Author     : josefo_1020
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.udea.entity.Matricula" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="css/styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de materias matriculadas</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h1>Lista de Materias Matriculadas</h1>
            <table border="1" align="center"  class="table table-hover">
                <thead>
                    <tr>
                        <th>Semestre</th>
                        <th>Materia</th>
                        <th>Codigo</th>
                        <th>Horario</th>
                    </tr> 
                </thead>
        <c:forEach var="a" items="${ventas}">
            <!--tr>
                <td>${a.placaCiudad}</td>
                <td>${a.ventasPK.numDocumento}</td>
                <td>${a.ventasPK.numVenta}</td>
                <td>${a.totalVenta}</td>
                <td>${a.cantidad}</td>
                <td>${a.fecha}</td>                
                <td><a onclick="return confirm('Esta seguro?')" href="VentasServlet?action=delete&numDocumento=${a.ventasPK.numDocumento}&numVenta=${a.ventasPK.numVenta}" >
                        Delete</a>   </td>
            </tr>         

            <hr/>      
            <hr/>
        </c:forEach>        
    </table>
</body>
</html>