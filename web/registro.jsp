<%-- 
    Document   : registro
    Created on : 1/03/2018, 10:17:58 PM
    Author     : josefo_1020
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        
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
            <form action="EstudianteServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th><label><b>Ingrese los nombres:</b></label></th>
                        <th>
                            <input type="text" placeholder="Nombres" class="form-control" name="nombre" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese los apellidos:</b></label></th>
                        <th>
                            <input type="text" placeholder="Apellidos" class="form-control" name="apellido" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese el documento:</b></label></th>
                        <th>
                            <input type="text" placeholder="Ingrese el documento de identidad" class="form-control" name="documento" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese el nombre de usuario:</b></label></th>
                        <th>
                            <input type="text" placeholder="Nombre de usuario" class="form-control" name="usuario" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese la nueva contrase�a:</b></label></th>
                        <th>
                            <input type="password" placeholder="Ingrese la contrase�a" class="form-control" name="contrasena" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Ingrese la foto:</b></label></th>
                        <th>
                            <input type="file" placeholder="Ingrese la foto" class="form-control" name="foto" required=""/>
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
                            
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Examinar foto">
                        </td>
                    </tr>
                </table>    
        </form> 
            </div>
            <br>
        </div>
    </body>
</html>