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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Pessoas</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOme</th>
                        <th>CPF</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <%
                PessoaDAO dao = new PessoaDAO();
               List<Pessoas>list = dao.listar();
               Iterator<Pessoas>iter=list.iterator();
               Pessoas pess = null;
               while(iter.hasNext()){
               pess = iter.next();
               
               
               
                %>
                <tbody>
                    <tr>
                        <td><%= pess.getId()%></td>
                        <td><%= pess.getNome()%></td>
                        <td><%= pess.getCpf()%></td>
                        <td>
                            <a>Editar</a>
                            <a>Remover</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
