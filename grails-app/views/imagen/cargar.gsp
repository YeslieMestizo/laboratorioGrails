
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargar Imágen</title>
    </head>
    <body>
        <h1>Cargar Imágen</h1>
        <g:uploadForm action="grabar">
        Nombre:
        <g:textField name="nombre" value="" /> </br>
        Imagen:
        <input type="file" name="myFile" /> </br>
        <input type="submit" value="Aceptar" />
        </g:uploadForm>
    </body>
</html>
