<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gesti&oacute;n de Alquiler</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <div class="container">
            <h1>Gesti&oacute;n de Alquiler</h1><br>
        </div>
        
        <div class="table-responsive m-b-40">
            <div class="container">
                <table class="table table-hover">
                    <tr class="info">
                        <th>C&oacute;digo</th>
                        <th>Cliente</th>
                        <th>Fecha Entrega</th>
                        <th>Fecha Devoluci&oacute;n</th>
                        <th>Productos</th>
                        <th>Precio</th>
                        <th>Estado</th>
                        <th></th>
                    </tr>
                    <g:each in="${listado?}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.cliente.id}</td>
                        <td>${it.fechaEntrega}</td>
                        <td>${it.fechaDevolucion}</td>
                        <td>${it.items.id}</td>
                        <td>${it.precio}</td>
                        <td>${it.estado}</td>
                        <td><g:link action="detalleAlquiler" id="${it.id}" class="btn btn-info">M&aacute;s detalle</g:link></td>
                    </tr>
                    </g:each>
                </table>
            </div>
        
    </body>
</html>