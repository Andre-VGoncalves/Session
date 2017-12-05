<%-- 
   
    Created on : 05/12/2017, 13:54:05
    Author     : andrevieira
--%>


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
        <title>Menu</title>
    </head>
    <body>
        <h1>Olá, <% out.print(session.getAttribute("usuario"));%></h1>
        <h2><strong>Menu Incial</strong></h2>
        <a href="dados.jsp">Dados Pessoais</a><br>
        <a href="logout.jsp">Logout</a>
    </body>
</html>
