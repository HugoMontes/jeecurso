<%@ page errorPage="/WEB-INF/error/errorHandler.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error JSP</title>
    </head>
    <body>
        <h1>ERROR JSP</h1>
        <%
            int resp = 4 / 0;
            out.println("Resultado: " + resp);
        %>
    </body>
</html>
