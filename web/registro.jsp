<%-- 
    Document   : registro
    Created on : 1/03/2018, 10:17:58 PM
    Author     : josefo_1020
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Registrar estudiante</h1>
        <div class="container well">
            <div align="center">
            <form action="AccountServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th><label><b>Ingrese el nombre de usuario:</b></label></th>
                        <th>
                            <input type="text" placeholder="Nombre de usuario" class="form-control" name="username" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese la contraseña:</b></label></th>
                        <th>
                            <input type="password" placeholder="Ingrese la contraseña" class="form-control" name="password" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese el email:</b></label></th>
                        <th>
                            <input type="email" placeholder="Ingrese un email" class="form-control" name="email" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Registrarse">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                            <input class="btn icon-btn btn-lg" type="reset" name="action" value="Resetear datos">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                    </tr>
                </table>    
        </form> 
            </div>
            <br>
        </div>
    </body>
</html>