<%-- 
    Document   : manager
    Created on : 2/03/2018, 01:04:50 AM
    Author     : josefo_1020
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
         <link rel="stylesheet" href="css/styles.css">
    </head>
    <body style="width: 100%;height: 100%;background-image: url('assets/img/forest-patrol.jpg');">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <jsp:include page="menu.jsp"></jsp:include>
      <div class="container">
          <h1>¡Bienvenido ${login}! Te invitamos a matricular materias </h1>
      </div>
        
    </body>
</html>
