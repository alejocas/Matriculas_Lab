<%-- 
    Document   : menu
    Created on : 1/03/2018, 04:05:58 PM
    Author     : josefo_1020
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty login}">
|<a href="login.jsp">Ingresar</a>|
|<a href="registro.jsp">Registrarse</a>|

</c:if>
<c:if test="${not empty login}">
|<a href="EstudianteServlet?action=logout">Logout</a>|
|<a href="EstudianteServlet?action=matricular">Matricularse</a>|
|<a href="EstudianteServlet?action=verPerfil">Ver Perfil del Estudiante</a>|
|<a href="EstudianteServlet?action=verMatriculas">Ver Matriculas</a>|

</c:if>

