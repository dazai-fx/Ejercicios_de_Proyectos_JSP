<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 01/12/2024
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    // Función para verificar si un valor es numérico
    boolean isNumeric(String str) {
        if (str == null || str.isEmpty()) return false;
        try {
            Double.parseDouble(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
    %>
<%
    // Recogiendo valores del formulario
    String input1 = request.getParameter("input1");
    String input2 = request.getParameter("input2");
    String input3 = request.getParameter("input3");

    // Variables para las notas
    double value1 = 0, value2 = 0, value3 = 0;
    boolean validInput = true;

    // Validando si los inputs son numéricos
    if (isNumeric(input1) && isNumeric(input2) && isNumeric(input3)) {
    value1 = Double.parseDouble(input1);
    value2 = Double.parseDouble(input2);
    value3 = Double.parseDouble(input3);

    // Calcular la media
    double media = (value1 + value2 + value3) / 3;
%>
<p>La media de las notas es: <strong><%= media %></strong></p>
<%
    } else {
    validInput = false;
%>
<p>Por favor, introduce valores numéricos válidos.</p>
<%
    }
%>
</body>
</html>
