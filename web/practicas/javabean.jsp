<%@page import="com.educomser.beans.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaBean</title>
    </head>
    <body>
        <h1>JAVA BEAN</h1>
        <%
            Empleado emp1=new Empleado();
            emp1.setNombre("Juan");
            emp1.setEdad(25);
            emp1.setSueldo(6500);            
        %>
        <h2>EMPLEADO 1</h2>
        Nombre: <%= emp1.getNombre() %> <br>
        Edad: <%= emp1.getEdad() %> <br>
        Sueldo: <%= emp1.getSueldo() %> <br>
        Observacion: <%= emp1.getObservacion() %>  
        <jsp:useBean id="emp2" class="com.educomser.beans.Empleado"/>
        <jsp:setProperty name="emp2" property="nombre" value="Ana"/>
        <jsp:setProperty name="emp2" property="edad" value="23"/>
        <jsp:setProperty name="emp2" property="sueldo" value="8900"/>
        <h2>EMPLEADO 2</h2>
        Nombre: <jsp:getProperty name="emp2" property="nombre"/> <br>
        Edad: <jsp:getProperty name="emp2" property="edad"/> <br>
        Sueldo: <jsp:getProperty name="emp2" property="sueldo"/> <br>
        Observacion: <jsp:getProperty name="emp2" property="observacion"/>
    </body>
</html>
