<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Alquiler</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Gestion de Alquiler</h1>
                
        <div class="table-responsive m-b-40">
        <table class="table table-borderless table-data3">
            <tr>
                <th>Codigo</th>
                <th>Cliente</th>
                <th>Fecha Entrega</th>
                <th>Fecha Devolucion</th>
                <th>Productos</th>
                <th>Precio</th>
                <th>Estado</th>
            </tr>
            <g:each in="${listado?}">
            <tr>
                <td>${it.id}</td>
                <td>${it.cliente.id}</td>
                <td>${it.fechaEntrega}</td>
                <td>${it.fechaDevolucion}</td>
                <td>${it.items.id}</td>
                <td>${it.precio}</td>
                <td>${it.estado}</td>
                <td><g:link action="detalleAlquiler" id="${it.id}">Mas detalle</g:link></td>
            </tr>
            </g:each>
        </table>
    </body>
</html>