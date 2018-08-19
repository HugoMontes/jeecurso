<%-- 
    Document   : redireccion
    Created on : 19-08-2018, 01:33:49 PM
    Author     : MONTES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REDIRECCION</h1>
        <%
            int pagina = 0;
            String mensaje = "";
            try {
                pagina = Integer.parseInt(request.getParameter("pagina"));
            } catch (Exception ex) {
                mensaje = "Error: Favor ingresar como parametro un valor entero";
                System.out.println(mensaje);
            }
        %>
        <% if (pagina == 0) {%>
            <p><%= mensaje%></p>
        <% } else if (pagina == 1) { %>
            <jsp:forward page="cursojava.jsp"/>
        <% } else if (pagina == 2) {
            response.sendRedirect("javabean.jsp");
           }
        %>
    </body>
</html>
