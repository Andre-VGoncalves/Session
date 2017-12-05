<%-- 
    Document   : logout
    Created on : 05/12/2017, 13:48:04
    Author     : andrevieira
--%>

<%-- logout.jsp --%>
<%
    session.setAttribute("usuario", null);
    session.invalidate();
    
    response.sendRedirect("index.html");
%>