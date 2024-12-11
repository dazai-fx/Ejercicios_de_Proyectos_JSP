<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 02/12/2024
  Time: 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ecuaciones segundo grado</title>
  </head>
  <body>
  <form action="quadraticSolver.jsp" method="POST">
    <label for="a">Coeficiente a:</label>
    <input type="text" id="a" name="a" required><br><br>
    <label for="b">Coeficiente b:</label>
    <input type="text" id="b" name="b" required><br><br>
    <label for="c">Coeficiente c:</label>
    <input type="text" id="c" name="c" required><br><br>
    <button type="submit">Resolver</button>
  </form>
  </body>
</html>
