<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="template" tagdir="/WEB-INF/tags" %>
<%
    String cadena[] = {"uno", "dos", "tres"};
    pageContext.setAttribute("cadenas", cadena);
    Date fecha=new Date();
%>
<template:base>
    <jsp:attribute name="title">
        MENU PRINCIPAL
    </jsp:attribute>
    <jsp:body>
        <h1>JSTL</h1>
        <h2>C:OUT</h2>
        Simple: <c:out value="1+2+3"/> <br>
        Expresion: <c:out value="${1+2+3}"/> <br>
        <!-- Al ejecutar agregar a la url del navegador: ?nombre=Hugo -->
        Parametro:<c:out value="${param.nombre}"/>

        <h2>C:SET</h2>
        <c:set var="saludo" value="Hola Mundo!"/>
        <c:out value="Saludo: ${saludo}"/>

        <h2>C:IF</h2>
        <c:if test="${empty param.nombre}">
            <c:out value="Variable no definida"/>
        </c:if>
        <!-- Al ejecutar agregar a la url: ?nombre=Hugo -->
        <c:if test="${!empty param.nombre}">
            <c:out value="Hola ${param.nombre}"/>
        </c:if>

        <h2>C:CHOOSE</h2>
        <!-- Al ejecutar agregar a la url: ?nombre=Hugo&numero=2 -->
        <c:set var="mes" value="${param.numero}"/>
        <c:choose>
            <c:when test="${mes==1}">
                Enero
            </c:when>
            <c:when test="${mes==2}">
                Febrero
            </c:when>
            <c:otherwise>
                Desconocido
            </c:otherwise>
        </c:choose>               
        <h2>C:FOREACH</h2>
        <table border="1">
            <c:forEach begin="1" end="10" step="1" var="i">
                <tr>
                    <td>
                        <c:out value="${i}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <h2>C:FOREACH - COLECCION</h2>
        <c:forEach var="valor" items="${cadenas}" varStatus="estado">
            <c:out value="${estado.index}"/> - <c:out value="${valor}"/> <br>
        </c:forEach>

        <h2>C:TOKENS</h2>
        <c:forTokens items="cero,uno,dos,tres,cuatro,cinco" var="token"
                     varStatus="numero" delims=",">
            <br>
            <c:out value="${numero.index} - ${token}"/> 
        </c:forTokens>

        <h2>C:REDIRECT</h2>
        <!-- Al igual que otro ejemplos, agregar a la url: &clave=secreto -->
        <c:if test="${param.clave=='secreto'}">
            <c:redirect url="index.html"/>
        </c:if>
        <c:out value="Ingrese clave=secreto"/>

        <h2>FORMAT DATE</h2>
        <!-- Se debe agregar la directiva correspondiente -->
        <c:set var="fecha" value="${fecha}"/>
        Fecha sin formato: <c:out value="${fecha}"/> <br>
        Formato Corto: <fmt:formatDate value="${fecha}"/> <br>
        Formato Largo: <fmt:formatDate value="${fecha}" dateStyle="long"/> <br>
        Formato Personalizado: <fmt:formatDate value="${fecha}" pattern="dd/MM/yyyy" /><br>
        Son las:<fmt:formatDate value="${fecha}" pattern="HH:mm:ss"/> <br>   

        <h2>FORMAT NUMBER</h2>
        <c:set var="numero">12000.2309</c:set>
            Numero sin formato:
        <c:out value="${numero}"/> <br>
        Formato Moneda: 
        <fmt:formatNumber value="${numero}" type="currency"/> <br>
        Formato 2 Decimales: 
        <fmt:formatNumber value="${numero}" type="number" maxFractionDigits="2"/> <br>
        Formato Porcentaje: 
        <fmt:formatNumber value="${numero}" type="percent" maxIntegerDigits="3"/>
    </jsp:body>
</template:base>
