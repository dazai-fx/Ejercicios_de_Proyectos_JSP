<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 02/12/2024
  Time: 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.math.BigDecimal, java.math.MathContext, java.math.RoundingMode" %>

<html>
<head>
    <title>Solución de ecuación cuadratica</title>
</head>
<body>
<%

    // Recoger los valores de los coeficientes
    String aStr = request.getParameter("a");
    String bStr = request.getParameter("b");
    String cStr = request.getParameter("c");

    try {
        // Convertir a BigDecimal
        BigDecimal a = new BigDecimal(aStr);
        BigDecimal b = new BigDecimal(bStr);
        BigDecimal c = new BigDecimal(cStr);

        // Validar que 'a' no sea cero
        if (a.compareTo(BigDecimal.ZERO) == 0) {
            throw new ArithmeticException("El coeficiente 'a' no puede ser cero.");
        }

        // Calcular el discriminante: b^2 - 4ac
        BigDecimal four = new BigDecimal("4");
        BigDecimal two = new BigDecimal("2");
        BigDecimal discriminant = b.pow(2).subtract(four.multiply(a).multiply(c));

        // Crear el contexto matemático para el cálculo
        MathContext mc = new MathContext(10, RoundingMode.HALF_UP);

        // Comprobar el discriminante
        if (discriminant.compareTo(BigDecimal.ZERO) < 0) {
%>
<p>La ecuación no tiene soluciones reales (discriminante negativo).</p>
<%
        } else {
        // Calcular las dos soluciones
        BigDecimal sqrtDiscriminant = new BigDecimal(Math.sqrt(discriminant.doubleValue()), mc);
        BigDecimal negativeB = b.negate();
        BigDecimal denominator = two.multiply(a);

        BigDecimal root1 = negativeB.add(sqrtDiscriminant).divide(denominator, mc);
        BigDecimal root2 = negativeB.subtract(sqrtDiscriminant).divide(denominator, mc);
%>
<h2>Soluciones de la ecuación:</h2>
<p>Raíz 1: <%= root1 %></p>
<p>Raíz 2: <%= root2 %></p>
<%
        }
    } catch (Exception e) {
%>
<p style="color: red;">Error: <%= e.getMessage() %></p>
<%
    }
%>
</body>
</html>
