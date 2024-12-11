<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 02/12/2024
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Generar calendario</title>
</head>
<body>
<form action="calendario.jsp" method="post">
    <fieldset>
        <legend>Calendario</legend>
        <label for="name">Nombre del mes:</label>
        <input type="text" name="name" id="name">
        <label for="year">Año:</label>
        <input type="text" name="year" id="year">
        <input type="submit" value="Generar calendario">
    </fieldset>
</form>
</body>
</html>
