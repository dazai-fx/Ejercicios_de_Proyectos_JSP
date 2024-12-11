<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Calendar" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.DateFormatSymbols" %>
<%@ page import="java.util.GregorianCalendar" %>
<html>
<head>
  <title>Calendario generado</title>
  <style>
    table {
      border-collapse: collapse;
      width: 50%;
      margin: auto;
    }
    th, td {
      border: 1px solid black;
      text-align: center;
      padding: 10px;
    }
    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
<%!

  public static boolean isInteger(String str) {
    if (str == null || str.isEmpty()) {
      return false;
    }
    try {
      Integer.parseInt(str);
      return true;
    } catch (NumberFormatException e) {
      return false;
    }
  }
%>
<%
  // Obtener parámetros del formulario
  String nameOfTheMonth = request.getParameter("name");
  String yearStr = request.getParameter("year");

  if (nameOfTheMonth == null || yearStr == null) {
%>
<p style="color: red; text-align: center;">No has introducido todos los valores del formulario. Por favor, vuelve a intentarlo.</p>
<%
} else if (!isInteger(yearStr)) {
%>
<p style="color: red; text-align: center;">El año debe ser un número entero.</p>
<%
} else {
  try {
    // Convertir año a entero
    int year = Integer.parseInt(yearStr);

    // Obtener número del mes a partir del nombre
    int month = -1;
    String[] months = new DateFormatSymbols(Locale.getDefault()).getMonths();
    for (int i = 0; i < months.length; i++) {
      if (months[i].equalsIgnoreCase(nameOfTheMonth)) {
        month = i;
        break;
      }
    }

    if (month == -1) {
%>
<p style="color: red; text-align: center;">El nombre del mes no es válido. Por favor, verifica e intenta de nuevo.</p>
<%
} else {
  // Crear el calendario para el mes y el año dados
  Calendar calendar = new GregorianCalendar(year, month, 1);

  // Obtener el día inicial y el número de días en el mes
  int firstDayOfWeek = calendar.get(Calendar.DAY_OF_WEEK) - 1; // Ajustar a 0 = domingo
  int daysInMonth = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);

%>
<h2 style="text-align: center;">Calendario de <%= nameOfTheMonth %> <%= year %></h2>
<table>
  <tr>
    <th>Dom</th>
    <th>Lun</th>
    <th>Mar</th>
    <th>Mié</th>
    <th>Jue</th>
    <th>Vie</th>
    <th>Sáb</th>
  </tr>
  <tr>
    <%
      // Imprimir los días vacíos antes del primer día
      for (int i = 0; i < firstDayOfWeek; i++) {
    %>
    <td></td>
    <%
      }

      // Imprimir los días del mes
      for (int day = 1; day <= daysInMonth; day++) {
        if ((day + firstDayOfWeek - 1) % 7 == 0 && day > 1) {
    %>
  </tr>
  <tr>
    <%
      }
    %>
    <td><%= day %></td>
    <%
      }

      // Completar los días vacíos restantes en la última fila
      int remainingCells = (daysInMonth + firstDayOfWeek) % 7;
      if (remainingCells != 0) {
        for (int i = remainingCells; i < 7; i++) {
    %>
    <td></td>
    <%
        }
      }
    %>
  </tr>
</table>
<%
  }
} catch (Exception e) {
  // Manejar errores inesperados
%>
<p style="color: red; text-align: center;">Ocurrió un error inesperado: <%= e.getMessage() %></p>
<%
    }
  }
%>

</body>
</html>
