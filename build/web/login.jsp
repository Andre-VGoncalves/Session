<%-- 
    Document   : login
    Created on : 05/12/2017, 13:47:11
    Author     : andrevieira
--%>

<%-- login.jsp --%>
<%@ page errorPage="mensagem.jsp" %>
<%
    if (session.getAttribute("usuario") != null) {
        throw new RuntimeException("logado");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1> Login</h1>
        <a href="index.html">Principal</a>
        
        <p>Informe os dados de acesso</p>
        <form name="frmlogin" action="verificacao.jsp" method="POST">
            Usuário: <input type="text" name="usuario"><br>
            Senha: <input type="password" name="senha"><br>
            <input type="submit" name="bt_login" value="Prosseguir">
            <input type="hidden" name="acao" value="login">
        </form>
    </body>
</html>