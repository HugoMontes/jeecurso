<%-- 
    Document   : detalle
    Created on : 18-08-2018, 02:52:25 PM
    Author     : MONTES
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>DETALLE CURSO</h1>
        <%  // Esto es un Scriptlet los que llevan “=” son expresiones
            // getParameter recupera de ambas peticiones: GET y POST
            String nombre = request.getParameter("nombre");
            int edad = Integer.parseInt(request.getParameter("edad"));
            String estado = request.getParameter("estado");
            String[] lenguajes = request.getParameterValues("lenguajes");
            String pais = request.getParameter("pais");
            // Procesamos los datos
            String observacion = edad > 18 ? "Es Mayor de Edad" : "Es Menor de Edad";
            // Obtener la fecha actual
            Date fecha = new Date();
            // Mostrar valores obtenidos
            out.println("<p>Nombre: "+nombre+" <p>");
        %>
        <p>Edad: <%= edad %></p>
        <p>Estado Civil: <%= estado %></p>
        <p>Lenguajes de Programacion:</p> 
        <ul>
            <% if (lenguajes != null) { %>
                <%  for (String lenguaje : lenguajes) { %>
                <li><%= lenguaje %></li>
                <%  } %>
            <% } else { %>
                <li>No tiene lenguajes.</li>
        <%  } %>
        </ul>
        <p>Pais: <%= pais %></p>
        <p>Observacion: <%= observacion %></p>
    </body>
</html>
