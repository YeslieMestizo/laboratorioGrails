<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainClient"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gesti&oacute;n Cat&aacute;logo</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <h1>Carrito</h1>
    <g:link controller="gestionCliente" action="masCompra" class="glyphicon-plus btn btn-default" params="[carrito:carrito]" >Agregar Carrito</g:link>

    <div class="container-fluid">

        <div class="col-sm-9">
            <table class="table table-borderless table-data3">
                <tr>
                    <th>Descripci&oacute;n</th>
                    <th>Talle</th>
                    <th>G&eacute;nero</th>
                    <th>Tipo</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                </tr>
                <g:each in="${carrito}">
                    <tr>
                        <td>${it.disfraz.descripcion}</td>
                        <td>${it.disfraz.talle}</td>
                        <td>${it.disfraz.genero}</td>
                        <td>${it.disfraz.tipo.descripcion}</td>
                        <td><input type="number" name="cantidad" min=1 max=${it.cantidad}></td>
                        <td>${it.precio}</td>
                        <td><g:link action="eliminarDisfrazCatalogo" id="${it.id}">Eliminar</g:link></td>
                        </tr>
                </g:each>
            </table>
        </div>
    </div>
    <label></label>
<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
