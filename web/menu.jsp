<%-- 
    Document   : menu
    Created on : 1/03/2018, 04:05:58 PM
    Author     : josefo_1020
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty login}">
    <nav>
        <div class="nav-wrapper">
            <a href="index.jsp" class="brand-logo"><i class="material-icons">chrome_reader_mode</i>MatriWeb</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="registro.jsp">Registro</a></li>
                <li><a href="login.jsp">Ingreso</a></li>
            </ul>
        </div>
    </nav>


</c:if>
<c:if test="${not empty login}">
    <nav>
        <div class="nav-wrapper">
            <a href="index.jsp" class="brand-logo"><i class="material-icons">chrome_reader_mode</i>Portal matrícula web</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="MatriculaServlet?action=matricular">Matrícula</a></li>
                <li><a href="EstudianteServlet?action=verMatriculas">Ver Matriculas</a></li>
                <li><a href="EstudianteServlet?action=verPerfil">Ver Perfil</a></li>
                <li><a href="EstudianteServlet?action=logout"><i class="material-icons">undo</i>Salir</a></li>
            </ul>
        </div>
    </nav>


</c:if>

