<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gesti&oacute;n de Alquiler</title>
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:stylesheet src="custom.css"/>
    </head>
    <body>
        <h1>Gesti&oacute;n de Alquiler</h1>         
        <div class="table-responsive m-b-40">
        <table class="table table-borderless table-data3">
            <tr>
                <th>C&oacute;digo</th>
                <th>Cliente</th>
                <th>Fecha Entrega</th>
                <th>Fecha Devoluci&oacute;n</th>
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
                <td><g:link action="detalleAlquiler" id="${it.id}">M&aacute;s detalle</g:link></td>
            </tr>
            </g:each>
        </table>
    </body>
</html>