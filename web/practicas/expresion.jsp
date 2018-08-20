<%-- 
    Document   : expresion
    Created on : 20-08-2018, 02:40:21 PM
    Author     : hmontes
--%>

<%@page import="com.educomser.beans.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EXPRESION LANGUAGE</h1>
        <h2>Acceso a valores</h2>
        <%
            // Definir variables con alcance de pagina
            pageContext.setAttribute("valora", 4);
            pageContext.setAttribute("valorb", 3);
        %>
        Valor A: ${valora} <br/>
        Valor B: ${valorb} <br/>
        <h2>Operadores Aritmeticos</h2>
        ${valora} + ${valorb} = ${valora+valorb} <br/>
        ${valora} - ${valorb} = ${valora-valorb} <br/>
        ${valora} * ${valorb} = ${valora*valorb} <br/>
        ${valora} / ${valorb} = ${valora/valorb} <br/>
        <h2>Operadores Logicos</h2>
        ${valora} == ${valorb} => ${valora eq valorb} <br/>
        ${valora} > ${valorb} => ${valora gt valorb} <br/>
        ${valora} <= ${valorb} => ${valora le valorb} <br/>
        <h2>JavaBean</h2>
        <%
            Empleado emp=new Empleado();
            emp.setNombre("Juan");
            emp.setEdad(25);
            emp.setSueldo(6500);
            // Definir variable con alcance de pagina
            pageContext.setAttribute("emp", emp);
        %>
        Nombre: ${emp.nombre} <br>
        Edad: ${emp.edad} <br>
        Sueldo: ${emp.sueldo} <br>
        Observacion: ${emp.observacion}
    </body>
</html>
