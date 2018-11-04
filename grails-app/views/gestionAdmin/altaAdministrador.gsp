<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Administrador</title>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Crear</h1>
        <div class="row">
            <div class="col-sm-3"></div>
                <div class="col-sm-6">
                <div class="well well-sm">
                <div class="panel-heading">
                <h3 class="panel-title">
                    <span class="glyphicon glyphicon-log-in"></span>Crear
                </h3>
            </div>
            <div class="well well-sm">
                <g:form action="guardarAltaAdministrador" method="post">
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id= "nombre" name="nombre" placeholder="nombre">
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido</label>
                    <input type="text" class="form-control" id= "apellido" name="apellido" placeholder="apellido">
                </div>
                <div class="form-group">
                    <label for="usuario">Usuario</label>
                    <input type="text" class="form-control" id= "usuario" name="usuario" placeholder="usuario">
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña</label>
                    <input type="password" class="form-control" id= "contrasena" name="contrasena" placeholder="contrasena">
                </div>
                <div class="form-group">
                    <label for="telefono">Tel&eacute;fono</label>
                    <input type="text" class="form-control" id= "telefono" name="telefono" placeholder="telefono">
                </div>
                <input type="submit" name="enviar" value="Guardar" class="btn btn-default"/>
                </g:form>
            </div>
        </div>
        </div>
        <div class="col-sm-3"></div>
        </div>

        <asset:javascript src="bootstrap.min.js" />
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>