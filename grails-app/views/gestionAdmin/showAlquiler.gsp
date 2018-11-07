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
    <div class="col-sm-10">
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
                    <th></th>
                    <th></th>
                </tr>
                <g:each in="${listado?}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.cliente.id}</td>
                        <td>${it.fechaEntrega}</td>
                        <td>${it.fechaDevolucion}</td>
                        <td>${it.items}</td>
                        <td>${it.precio}</td>
                        <td>${it.estado}</td>
                        <td><g:link action="editarEstadoAlquiler" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="darBajaAlquiler" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                        <td><g:link action="detalleAlquiler" id="${it.id}" class="btn btn-info">M&aacute;s detalle</g:link></td>
                        </tr>
                </g:each>
            </table>
        </div>
    </div>

    <g:if test="${alquiler}">
        <div class="col-sm-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-log-in"></span> 
                        Editar
                    </h3>
                </div>
                <div class="well well-sm">
                    <g:form action="actualizarEstadoAlquiler" method="post">
                        <g:hiddenField name="version" value="${this.alquiler?.version}" />
                        <g:hiddenField name="id" value="${this.alquiler?.id}" />
                        <div class="form-group">
                            <label for="estado">Estado</label>
                            <g:select name="estado" from="${['Alquilado','Pendiente','Devuelto']}" class="form-control" value="${alquiler.estado}" />
                        </div>
                        <input type="submit" name="enviar" value="Guardar" class="btn btn-default" />
                        <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>
                    </g:form>
                </div>
            </div>  
        </div>
    </g:if>

<asset:javascript src="bootstrap.min.js" />    
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>