<%-- 
    Document   : nuevaMatricula
    Created on : 1/03/2018, 04:06:51 PM
    Author     : josefo_1020
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva matrícula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Matrícula</h1>
        <h4>Ingrese los campos correctamente, por ejemplo, si necesita la materia Cálculo, digite el nombre <br/>
            completo: "Calculo Diferencial"</h4>
        <div class="container well">
            <form action="ClienteServlet?action=insert" method="post">

                <table>
                    <tr>
                        <th>  <label><b>Nombre de la Materia:</b></label> </th>
                        <th> 
                            <input type="text" class="form-control" name="nombreMateria" required=""/>
                        </th>
                    </tr>
                    <%-- 
                    <tr>
                        <th> <label><b>Código de la materia:</b></label> </th>
                        <th><input type="text"  class="form-control" name="tipodoc"
                                   required=""/> </th>
                    </tr>
                    --%>
                    <%--<tr>
                        <th> <label><b>Horario:</b></label></th>
                        <th><input type="text"  maxlength="15" class="form-control" name="horarioMateria"
                                   required=""/> </th>
</tr> --%>
            
                    <div class="break"></div>                        
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Insertar">
                            <span class="glyphicon glyphicon-ok-sign"></span>

                            <!--            <span class="glyphicons glyphicons-user-add img-circle text-success"></span>-->
                            <input class="btn btn-info btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                            
                            <input class="btn icon-btn break" type="submit" name="action" value="Finalizar Matricula">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                        </td>
                    </tr>
                </table>
            </form>   
            <br>
        </div>
    </body>
