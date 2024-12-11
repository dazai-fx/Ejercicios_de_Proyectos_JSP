<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 29/11/2024
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saludos</title>
</head>
<body>
    <form action="saludo.jsp" method="POST">
        <fieldset>App saludos</fieldset>
        <label for="language">Elige un idioma:</label>
        <select name="language" id="language" required>
            <option value="es">Español</option>
            <option value="pt">Portugués</option>
            <option value="en">Inglés</option>
        </select>
        <input type="text" name="name" placeholder="Introduce tu nombre" required>
        <input type="submit">
    </form>
</body>
</html>
