
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Imágen</title>
    </head>
    <body>
        <h1>Mostrar Imágen</h1>
<<<<<<< HEAD
        <label>${disfraz.id}</label>
        <label>${disfraz.descripcion}</label>
        <label>${disfraz.genero}</label>
        <label>${disfraz.tipo.id}</label>

        <img  src=${createLink(controller:"GestionAdmin", action:"verImagen", id:"${disfraz.id}")} width=’300′ />

=======
        <img  src=${createLink(controller:"GestionAdmin", action:"verImagen", id:"${params.id}")} width=’300′ />
        <td><g:link controller="GestionAdmin" action="showDisfraz">Volver</g:link></td>
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    </body>
</html>
