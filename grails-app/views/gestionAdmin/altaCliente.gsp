<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Cliente</title>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Nuevo Cliente</h1>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="panel panel-default">
            <div class="panel-heading">
        <h3 class="panel-title">
        <span class="glyphicon glyphicon-log-in"></span>
        Crear
        </h3>
            </div>
            <div class="well well-sm">
        <g:form action="guardarAltaCliente" method="post">
        <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" name="nombre" placeholder="Escribir nombre">
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido</label>
                    <input type="text" class="form-control" name="apellido" placeholder="Escribir apellido">
        </div>
                <div class="form-group">
                    <label for="telefono">Telefono</label>
                    <input type="text" class="form-control" name="telefono" placeholder="Escribir telefono">
                </div>
        <div class="form-group">
                    <label for="direccion">Direccion</label>
                    <input type="text" class="form-control" name="direccion" placeholder="Escribir direccion">
        </div>
                <div class="form-group">
                    <label for="usuario">Usuario</label>
                    <input type="text" class="form-control" name="usuario" placeholder="Escribir usuario">
        </div>
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" name="password" placeholder="Escribir contraseña">
        </div>
                    <input type="submit" name="enviar" value="Guardar" class="btn btn-default" />
        </g:form>
            </div>
        </div>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <asset:javascript src="bootstrap.min.js" />
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>
