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
|<a href="AccountServlet?action=logout">Logout</a>|
|<a href="AccountServlet?action=list">List Accounts</a>|

</c:if>



|<a href="AccountServlet?action=about">About</a>|
<hr/>

