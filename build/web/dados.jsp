<%-- 
    Created on : 05/12/2017, 13:55:53
    Author     : andrevieira
--%>

<%-- restrita2.jsp --%>
<%@ page errorPage="mensagem.jsp" %>
<%
    if (session.getAttribute("usuario") == null) {
        throw new RuntimeException("Esta página é de acesso restrito. Efetue o login para continuar!<br>");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados</title>
    </head>
    <body>
        <h1>Olá, <strong><% out.print(session.getAttribute("usuario"));%></strong></h1>
        <h2><strong>Dados Pessoais </strong></h2>
        <p><strong> Nome: </strong> Andre Vieira Goncalves </p>
        <p><strong> Data Nasc - Idade: </strong> 01/04/1995 - 22 Anos </p>
        <p><strong> Curso: </strong> Ciencia da computacao </p>
        <p><strong> turno - Semestre: </strong>  Noturno - Sexto Semestre </p>
        <p><strong> RA: </strong> 2215109141 </p>
        <p><strong> Cidade: </strong> Sao Paulo - SP </p>
        <p><strong> CEP: </strong> 04836-400 </p>
        <a href="user.jsp">Home</a><br>
        <a href="logout.jsp">Logout</a>
    </body>
</html>
