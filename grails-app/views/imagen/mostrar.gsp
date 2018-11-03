
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Imágen</title>
    </head>
    <body>
        <h1>Mostrar Imágen</h1>

        <img  src=${createLink(controller:"GestionAdmin", action:"verImagen", id:"${params.id}")} width=’300′ />

    </body>
</html>
