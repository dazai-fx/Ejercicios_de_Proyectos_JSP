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
    <title>Configurador de Interior</title>
</head>
<body>
<h1>Configurador de Interior del Vehículo</h1>
<form action="resultado.jsp" method="post">
    <label for="tapiceria">Seleccione el color de la tapicería:</label>
    <select id="tapiceria" name="tapiceria" required>
        <option value="blanco">Blanco</option>
        <option value="negro">Negro</option>
        <option value="berenjena">Berenjena</option>
    </select>

    <label for="moldura">Seleccione el material de las molduras:</label>
    <select id="moldura" name="moldura" required>
        <option value="madera">Madera</option>
        <option value="carbono">Carbono</option>
    </select>

    <input type="submit" value="Configurar Interior">
</form>
</body>
</html>
