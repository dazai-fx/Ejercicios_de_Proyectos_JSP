<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 02/12/2024
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabla generada</title>
</head>
<body>
<%
    String numStr = request.getParameter("num");

    if (numStr != null && !numStr.isEmpty()) {
        try{
            int num = Integer.parseInt(numStr);
            %>
<table border style="margin: 0 auto"><th COLSPAN=2>Tabla <%= num %></th>
<%

            for (int i = 0; i <= 10; i++) {


%>
<tr>
    <td><%= i %>x<%= num %>=</td><td><%= i*num %></td>
</tr>
<% }
%>
</table>
<%
     } catch (NumberFormatException e) {
%>
<p style="color: red;">Por favor, introduce un valor numérico válido.</p>
<%
    }
} else {
%>
<p style="color: red;">No has introducido una cantidad.</p>
<%
    }
%>
</body>
</html>
