<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="template" tagdir="/WEB-INF/tags" %>

<template:base>
    <jsp:attribute name="title">
      MENU PRINCIPAL
    </jsp:attribute>
    <jsp:body>
        <a href="${pageContext.servletContext.contextPath}/HolaServlet">1. Hola Servlet</a><br/>
        <a href="${pageContext.servletContext.contextPath}/ParametrosServlet?txtNombre=Maria&txtEdad=33">2. Parametros Servlet</a><br/>
        <a href="${pageContext.servletContext.contextPath}/practicas/cursojava.jsp">3. Formulario JSP</a><br/>
    </jsp:body>
</template:base>