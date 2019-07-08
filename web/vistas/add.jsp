<%-- 
    Document   : add
    Created on : 27/06/2019, 16:30:09
    Author     : bruno.alves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Adcionar Pessoas</h1>
            
            <form action="Controlador">
                Nome:<br>
                <input class="form-control" type="text" name="txtnome"><br>
                CPF:<br>
                <input class="form-control" type="text" name="txtcpf"><br>
                <input  class="btn btn-primary mb-2" type="submit" name="acao"  value="cadastrar">
                
            </form>
        </div>
    </body>
</html>
