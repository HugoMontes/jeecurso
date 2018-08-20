<%-- 
    Document   : cierra_sesion
    Created on : 19-08-2018, 06:11:53 PM
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
        <%
            request.getSession().invalidate();
        %>
        <h1>Sesion finalizada</h1>
    </body>
</html>
