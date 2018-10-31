<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Disfraz</title>
        <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Eliminar y/o Editar un Disfraz</h1>
        <table>
            <tr>
                <th>Codigo</th>
                <th>Descripcion</th>
                <th>Talle</th>
                <th>Genero</th>
                <th>Tipo</th>
            </tr>
            <g:each in="${listado?}">
            <tr>
                <td>${it.id}</td>
                <td>${it.descripcion}</td>
                <td>${it.talle}</td>
                <td>${it.genero}</td>
                <td>${it.tipo.id}</td>
                <td><g:link action="editarDisfraz" id="${it.id}">Editar</g:link></td>
                <td><g:link action="darBajaDisfraz" id="${it.id}">Eliminar</g:link></td>
            </tr>
            </g:each>
        </table>
        
    </body>
</html>
