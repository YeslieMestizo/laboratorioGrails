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
        <title>Detalle Alquiler</title>
    </head>
    <body>
        <h1>Detalle Alquiler</h1>
        <table>
            <tr>
                <th>Codigo</th>
                <th>Cliente</th>
                <th>Fecha Entrega</th>
                <th>Fecha Devolucion</th>
                <th>Productos</th>
                <th>Precio</th>
                <th>estado</th>
            </tr>
            <tr>
                <td>${alquiler.id}</td>
                <td>${alquiler.cliente.id}</td>
                <td>${alquiler.fechaEntrega}</td>
                <td>${alquiler.fechaDevolucion}</td>
                <td>${alquiler.items.id}</td>
                <td>${alquiler.precio}</td>
                <td>${alquiler.estado}</td>
            </tr>
        </table>
        cliente
        <table>
            <tr>
                <th>Codigo</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Telefono</th>
                <th>Direccion</th>
                <th>Usuario</th>
                <th>Contraseña</th>
            </tr>
            <tr>
                <td>${alquiler.cliente.id}</td>
                <td>${alquiler.cliente.nombre}</td>
                <td>${alquiler.cliente.apellido}</td>
                <td>${alquiler.cliente.telefono}</td>
                <td>${alquiler.cliente.direccion}</td>
                <td>${alquiler.cliente.usuario}</td>
                <td>${alquiler.cliente.password}</td>
            </tr>
        </table>
        
        Disfraz
        <table>
            <tr>
                <th>Codigo</th>
                <th>Descripcion</th>
                <th>Talle</th>
                <th>Genero</th>
                <th>Tipo</th>
            </tr>
            <g:each in="${alquiler.items.disfraces}">
            <tr>
                <td>${it.id}</td>
                <td>${it.descripcion}</td>
                <td>${it.talle}</td>
                <td>${it.genero}</td>
                <td>${it.tipo.descripcion}</td>
            </tr>
            </g:each>
        </table>
    </body>
</html>
