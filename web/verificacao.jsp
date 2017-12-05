<%-- 
    Document   : verificacao
    Created on : 05/12/2017, 13:49:30
    Author     : andrevieira
--%>

<%-- verifica.jsp --%>
<%@ page errorPage="mensagem.jsp" %>
<%
    if (request.getParameter("acao").equals("login")) {
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
 
        if (usuario.equals("") || senha.equals("")) {
            throw new RuntimeException("Favor preencher os dados para acesso.<br><br>");
        }
 
        if (usuario.equals("andre") && senha.equals("2215109141")) {
            session.setAttribute("usuario", usuario);
            response.sendRedirect("user.jsp");           
        } else {
             throw new RuntimeException("Dados incorretos!<br>");           
        }
    } else {
        response.sendRedirect(request.getParameter("pagina"));
    }
%>
