<%-- 
    Document   : listar
    Created on : 27/06/2019, 16:30:36
    Author     : bruno.alves
--%>

<%@page import="Modelo.Pessoas"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        <div class=" container">
            <h1>Pessoas</h1>
            <a class=" btn btn-success btn-lg"    href="Controlador?acao=add">Adcionar nova pessoa</a>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" class="text-center">ID</th>
                        <th scope="col" class="text-center">Nome</th>
                        <th scope="col" class="text-center">CPF</th>
                        <th scope="col" class="text-center">Ações</th>
                    </tr>
                </thead>
                <%
                    PessoaDAO dao = new PessoaDAO();
                    List<Pessoas> list = dao.listar();
                    Iterator<Pessoas> iter = list.iterator();
                    Pessoas pess = null;
                    while (iter.hasNext()) {
                        pess = iter.next();
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= pess.getId()%></td>
                        <td class="text-center"><%= pess.getNome()%></td>
                        <td class="text-center"><%= pess.getCpf()%></td>
                        <td class="text-center">
                            <a class="btn btn-primary" href="Controlador?acao=editar&id=<%= pess.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?acao=excluir&id=<%= pess.getId()%>">Excluir</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
