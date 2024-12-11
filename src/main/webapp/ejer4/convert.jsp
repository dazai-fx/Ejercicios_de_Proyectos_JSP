<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 01/12/2024
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // Recoger el valor ingresado desde el formulario
    String dolarsStr = request.getParameter("dolars");

    // Tipo de cambio actual (puedes ajustar este valor según corresponda)
    final double TIPO_CAMBIO = 0.93; // 1 USD = 0.93 EUR

    // Validar el valor ingresado
    if (dolarsStr != null && !dolarsStr.isEmpty()) {
        try {
            // Convertir a double y calcular
            double dolars = Double.parseDouble(dolarsStr);
            double euros = dolars * TIPO_CAMBIO;
%>
<h2>Conversión exitosa</h2>
<p><strong><%= dolars %></strong> dólares equivalen a <strong><%= String.format("%.2f", euros) %></strong> euros.</p>
<%
} catch (NumberFormatException e) {
%>
<p style="color: red;">Por favor, introduce un valor numérico válido.</p>
<%
    }
} else {
%>
<p style="color: red;">No has introducido una cantidad.</p>
<%
    }
%>
</body>
</html>
