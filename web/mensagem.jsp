<%-- 
    Document   : menssagem
                 mensagem.jsp
    Created on : 05/12/2017, 14:44:02
    Author     : andrevieira
--%>

<%@ page isErrorPage="true" %>
<html>
    <head>
        <title>Mostra Erro</title>
    </head>
    <body>
        <h1>Atenção!</h1>
        <%
            try {
                if (exception.getMessage().equals("logado")) {
                    out.print("<p>Olá, você já está logado no sistema.</p><br>");
                    out.print("<a href=\"user.jsp\">Menu</a><br>");
                    out.print("<a href=\"dados.jsp\">Dados</a><br>");
                    out.print("<a href=\"logout.jsp\">Logout</a>");
                } else {
                    out.print(exception.getMessage());
                    out.print("<a href=\"login.jsp\">Login</a>");
                }
            } catch (Exception e) {
            }
        %>
    </body>
</html>
