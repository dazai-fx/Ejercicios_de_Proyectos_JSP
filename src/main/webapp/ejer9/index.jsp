<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/12/2024
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Random" %>
<html>
<head>
  <title>Tablero de Ajedrez</title>
  <style>
    table {
      border-collapse: collapse;
      margin: 20px auto;
    }
    td {
      width: 50px;
      height: 50px;
      text-align: center;
      vertical-align: middle;
      font-size: 24px;
      font-weight: bold;
    }
    .white {
      background-color: #f0d9b5;
    }
    .black {
      background-color: #b58863;
    }
    .coordinates {
      background-color: #ddd;
      font-size: 14px;
      font-weight: bold;
      text-align: center;
    }
  </style>
</head>
<body>
<h1 style="text-align: center;">Tablero de Ajedrez</h1>

<%
  // Generar posiciones aleatorias para el alfil y el caballo
  Random random = new Random();
  int alfilRow, alfilCol, caballoRow, caballoCol;

  do {
    alfilRow = random.nextInt(8); // 0-7 para las filas
    alfilCol = random.nextInt(8); // 0-7 para las columnas
    caballoRow = random.nextInt(8);
    caballoCol = random.nextInt(8);
  } while (alfilRow == caballoRow && alfilCol == caballoCol); // Asegurar que no estén en la misma posición

  // Dibujar el tablero de ajedrez
%>
<table>
  <tr>
    <td class="coordinates"></td>
    <% for (int c = 0; c < 8; c++) { %>
    <td class="coordinates"><%= (char) ('A' + c) %></td>
    <% } %>
  </tr>
  <% for (int r = 0; r < 8; r++) { %>
  <tr>
    <td class="coordinates"><%= (r + 1) %></td>
    <% for (int c = 0; c < 8; c++) {
      String cellClass;
      if ((r + c) % 2 == 0) {
        cellClass = "white";
      } else {
        cellClass = "black";
      }

      String piece = "";
      if (r == alfilRow && c == alfilCol) {
        piece = "&#9815;"; // Unicode para alfil
      } else if (r == caballoRow && c == caballoCol) {
        piece = "&#9816;"; // Unicode para caballo
      }
    %>
    <td class="<%= cellClass %>"><%= piece %></td>
    <% } %>
  </tr>
  <% } %>
</table>

<div style="text-align: center; margin-top: 20px;">
  <p>Posición del alfil:
    <b>
      <%= (char) ('A' + alfilCol) %><%= (alfilRow + 1) %>
    </b>
  </p>
  <p>Posición del caballo:
    <b>
      <%= (char) ('A' + caballoCol) %><%= (caballoRow + 1) %>
    </b>
  </p>
</div>
</body>
</html>

