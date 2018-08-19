<%-- 
    Document   : cuestionario
    Created on : 18-08-2018, 02:44:04 PM
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
    <body>
        <h1>Curso Java</h1>
        <form action="detalle.jsp" method="get">
            <label>Ingrese su nombre:</label>
            <input type="text" name="nombre"/><br/>
            <label>Ingrese su edad:</label>
            <input type="text" name="edad"/><br/>
            <label>Estado Civil:</label>
            <input type="radio" name="estado" value="soltero" checked="checked"/>Soltero
            <input type="radio" name="estado" value="casado"/>Casado
            <input type="radio" name="estado" value="divorciado"/>Divorciado
            <input type="radio" name="estado" value="viudo"/>Viudo
            <br/>
            <label>Seleccione sus lenguajes de programacion:</label>
            <input type="checkbox" name="lenguajes" value="Java"/>Java
            <input type="checkbox" name="lenguajes" value="PHP"/>PHP
            <input type="checkbox" name="lenguajes" value="VisualBasic"/>VisualBasic
            <input type="checkbox" name="lenguajes" value="Python"/>Python
            <br/>
            Pais:
            <select name="pais">
                <option value="argentina">Argentina</option>
                <option value="bolivia">Bolivia</option>
                <option value="colombia">Colombia</option>
                <option value="peru">Peru</option>
            </select>
            <br/>
            <input type="submit" value="Enviar"/>            
        </form>
    </body>
</body>
</html>
