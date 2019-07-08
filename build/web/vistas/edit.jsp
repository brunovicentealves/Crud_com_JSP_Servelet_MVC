<%-- 
    Document   : edit
    Created on : 27/06/2019, 16:30:22
    Author     : bruno.alves
--%>

<%@page import="Modelo.Pessoas"%>
<%@page import="ModeloDAO.PessoaDAO"%>
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
        <%
            PessoaDAO dao = new PessoaDAO();
            int id = Integer.parseInt((String) request.getAttribute("idper"));
            Pessoas p = (Pessoas) dao.list(id);
        %>
        <h1>Modificar Pessoas</h1>

        <form action="Controlador">
            Nome:<br>
            <input type="text" name="txtnome" value="<%= p.getNome()%>"><br>
            CPF:<br>
            <input class="form-control" type="text" name="txtcpf" value="<%= p.getCpf()%>"><br>
            <input class="form-control" type="text" name="txtid" value="<%= p.getId()%>"><br>
            <input class="btn btn-primary mb-2"  type="submit" name="acao"  value="atualizar">

        </form>
    </div>

</body>
</html>
