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
<<<<<<< HEAD:grails-app/views/gestionAdmin/showAlquiler.gsp
        <h1>Gestion de Alquiler</h1>
        <table>
            <tr>
                <th>Codigo</th>
                <th>Cliente</th>
                <th>Fecha Entrega</th>
                <th>Fecha Devolucion</th>
                <th>Productos</th>
                <th>Precio</th>
                <th>Estado</th>
=======
        <h1>Eliminar y/o Editar un Disfraz</h1>
        <div class="table-responsive m-b-40">
        <table class="table table-borderless table-data3">
            <tr>
                <th>C&oacute;digo</th>
                <th>Descripci&oacute;n</th>
                <th>Talle</th>
                <th>G&eacute;nero</th>
                <th>Tipo</th>
>>>>>>> 3bf05d7a4bb1f43cabc0b197c5f3c61a0d513187:grails-app/views/gestionAdmin/editarEliminarDisfraz.gsp
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