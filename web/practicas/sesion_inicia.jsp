<%-- 
    Document   : sesion
    Created on : 19-08-2018, 06:08:43 PM
    Author     : MONTES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*" %>
<%
    // Obtener tiempo de creación de la sesión
    Date createTime = new Date(session.getCreationTime());

    // Obtener utlimo tiempo de acceso de esta pagina
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    String title = "Gracias por permanecer en mi sitio web";
    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
    String userIDKey = new String("userID");
    String userID = new String("ABCD");

    // Compruebar si es una nueva sesion en la página
    if (session.isNew()) {
        title = "Bienvenido a mi sitio web";
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey, visitCount);
    }
    visitCount = (Integer) session.getAttribute(visitCountKey);
    visitCount = visitCount + 1;
    userID = (String) session.getAttribute(userIDKey);
    session.setAttribute(visitCountKey, visitCount);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center">
            <h1>Seguimiento de Sesion</h1>
            <h2><%= title%></h2>
        </div>
        <table border = "1" align = "center"> 
            <tr bgcolor = "#949494">
                <th>Session info</th>
                <th>Valores</th>
            </tr> 
            <tr>
                <td>id</td>
                <td><%= session.getId() %></td>
            </tr> 
            <tr>
                <td>Creacion</td>
                <td><%= createTime %></td>
            </tr> 
            <tr>
                <td>Ultimo acceso</td>
                <td><%= lastAccessTime %></td>
            </tr> 
            <tr>
                <td>User ID</td>
                <td><%= userID %></td>
            </tr> 
            <tr>
                <td>Numero de visitas</td>
                <td><%= visitCount %></td>
            </tr> 
        </table>
    </body>
</html>
