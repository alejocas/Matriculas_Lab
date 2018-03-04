<%-- 
    Document   : menu
    Created on : 1/03/2018, 04:05:58 PM
    Author     : josefo_1020
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty login}">
    <nav>
        <div class="nav-wrapper">
            <a href="#" class="brand-logo">Matriculas</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
              <li><a href="registro.jsp">Registrase</a></li>
              <li><a href="login.jsp">Ingresar</a></li>
            </ul>
        </div>
    </nav>
  

</c:if>
<c:if test="${not empty login}">
    <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Matriculas</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="MatriculaServlet?action=matricular">Matricularse</a></li>
        <li><a href="EstudianteServlet?action=verPerfil">Ver Perfil del Estudiante</a></li>
        <li><a href="EstudianteServlet?action=verMatriculas">Ver Matriculas</a></li>
        <li><a href="EstudianteServlet?action=logout">Logout</a></li>
      </ul>
    </div>
  </nav>


</c:if>

