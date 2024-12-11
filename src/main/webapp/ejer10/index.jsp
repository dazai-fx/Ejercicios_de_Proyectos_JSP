<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/12/2024
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Máquina de Helados</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin: 0;
      padding: 0;
    }

    form {
      margin: 20px auto;
      max-width: 300px;
    }

    .tarrina {
      width: 200px;
      height: 300px; /* Altura fija de la tarrina */
      border: 3px solid red;
      border-top: none;
      margin: 20px auto;
      position: relative;
      display: flex;
      flex-direction: column-reverse; /* Apilar elementos desde abajo */
      overflow: hidden; /* Evitar que el contenido sobresalga */
    }

    .sabor {
      width: 100%;
    }

    .chocolate {
      background-color: #7b3f00;
    }

    .fresa {
      background-color: #ff6b6b;
    }

    .vainilla {
      background-color: #f3e5ab;
    }

    .hueco {
      background-color: #f5f5f5;
    }

    p.error {
      color: red;
      font-weight: bold;
    }
  </style>
</head>
<body>
<h1>Máquina de Helados</h1>
<form method="post">
  <label for="chocolate">Porcentaje de Chocolate:</label>
  <input type="number" name="chocolate" id="chocolate" min="0" max="100" required>
  <br>
  <label for="fresa">Porcentaje de Fresa:</label>
  <input type="number" name="fresa" id="fresa" min="0" max="100" required>
  <br>
  <label for="vainilla">Porcentaje de Vainilla:</label>
  <input type="number" name="vainilla" id="vainilla" min="0" max="100" required>
  <br><br>
  <button type="submit">Generar Tarrina</button>
</form>

<%
  String chocolateStr = request.getParameter("chocolate");
  String fresaStr = request.getParameter("fresa");
  String vainillaStr = request.getParameter("vainilla");

  if (chocolateStr != null && fresaStr != null && vainillaStr != null) {
    int chocolate = Integer.parseInt(chocolateStr);
    int fresa = Integer.parseInt(fresaStr);
    int vainilla = Integer.parseInt(vainillaStr);

    int total = chocolate + fresa + vainilla;

    if (total > 100) {
%>
<p class="error">La suma de los porcentajes debe ser menor o igual que 100. Por favor, introduzca de nuevo los porcentajes.</p>
<%
} else {
  int hueco = 100 - total; // Calculamos el espacio vacío si no suman 100%
%>
<div class="tarrina">
  <%
    if (chocolate > 0) {
  %>
  <div class="sabor chocolate" style="height: <%= chocolate %>%;">Chocolate: <%= chocolate %> %</div>
  <%
    }
    if (fresa > 0) {
  %>
  <div class="sabor fresa" style="height: <%= fresa %>%;">Fresa: <%= fresa %> %</div>
  <%
    }
    if (vainilla > 0) {
  %>
  <div class="sabor vainilla" style="height: <%= vainilla %>%;">vainilla: <%= vainilla %> %</div>
  <%
    }
    if (hueco > 0) {
  %>
  <div class="sabor hueco" style="height: <%= hueco %>%;"></div>
  <%
    }
  %>
</div>
<%
    }
  }
%>

</body>
</html>
