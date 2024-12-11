<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 24/11/2024
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="styles.css" />
    <title>Datos de usuario</title>
</head>
<body>
<%
    String nombre="Jose Antonio";
    String apellidos="López Ávila";
    Calendar calendar = Calendar.getInstance();
    calendar.set(1999,Calendar.MAY,15);
    Date fechaNacimiento = calendar.getTime();
    // Formatear la fecha en día/mes/año y en español
    SimpleDateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy", new Locale("es", "ES"));
    String fechaFormateada = formatoFecha.format(fechaNacimiento);
    String curso="2ºDAW";
%>
<div class="container">
    <h1>Datos personales</h1>
    <table>
        <tr>
            <th>Nombre</th>
            <td><%=nombre%></td>
        </tr>
        <tr>
            <th>Apellidos</th>
            <td><%=apellidos%></td>
        </tr>
        <tr>
            <th>Fecha de Nacimiento</th>
            <td><%=fechaFormateada%></td>
        </tr>
        <tr>
            <th>Curso</th>
            <td><%=curso%></td>
        </tr>
    </table>
</div>
</body>
</html>
