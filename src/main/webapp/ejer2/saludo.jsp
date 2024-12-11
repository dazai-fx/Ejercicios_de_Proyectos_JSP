<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 29/11/2024
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saludos</title>
</head>
<body>
    <%



        String name = request.getParameter("name");
        String language = request.getParameter("language");
        String greeting="";

        if(language.equalsIgnoreCase("es")){
            greeting="Holaaa";
        }else if(language.equalsIgnoreCase("pt")){
            greeting="Olá";
        }else if(language.equalsIgnoreCase("en")){
            greeting="hellooo";
        }

        if (greeting != null && !greeting.isEmpty() && name != null && !name.isEmpty()) {

    %>
    <p><strong><%= greeting %>, <%= name %></strong></p>
    <%
        } else{
    %>
        <p>No has introducido un nombre.</p>
    <%
        }
    %>
</body>
</html>
