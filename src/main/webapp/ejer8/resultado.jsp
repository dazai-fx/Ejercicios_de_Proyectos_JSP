<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/12/2024
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .result {
            margin-top: 30px;
        }
        .interior {
            display: inline-block;
            width: 300px;
            height: 200px;
            border: 5px solid;
            border-radius: 10px;
        }
        .description {
            margin-top: 20px;
            font-size: 16px;
        }
    </style>
    <title>Resultado del Configurador</title>
</head>
<body>
<%
    // Obtener los parámetros seleccionados por el usuario
    String tapiceria = request.getParameter("tapiceria");
    String moldura = request.getParameter("moldura");

    // Definir colores para cada opción de tapicería
    String tapiceriaColor = "white"; // Blanco por defecto
    if ("negro".equalsIgnoreCase(tapiceria)) {
        tapiceriaColor = "black";
    } else if ("berenjena".equalsIgnoreCase(tapiceria)) {
        tapiceriaColor = "#8e4585"; // Color berenjena
    }

    // Definir estilos para molduras
    String molduraBorde = "brown"; // Madera por defecto
    if ("carbono".equalsIgnoreCase(moldura)) {
        molduraBorde = "gray";
    }

    // Validar los parámetros para evitar valores nulos
    if (tapiceria != null && moldura != null) {
%>
<div class="result">
    <p class="description">
        Has configurado el interior con tapicería de color
        <b><%= tapiceria %></b> y molduras de <b><%= moldura %></b>.
    </p>
    <p>Así luciría tu vehículo:</p>
    <div class="interior" style="background-color: <%= tapiceriaColor %>; border-color: <%= molduraBorde %>;">
    </div>
</div>
<%
} else {
%>
<p style="color: red;">No se han recibido todas las opciones. Por favor, vuelve al formulario y completa los campos.</p>
<a href="formulario.jsp">Volver al formulario</a>
<%
    }
%>
</body>
</html>
