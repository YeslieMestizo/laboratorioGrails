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
                  <g:if test="${message}">
                    <div class="message" role="status">${message}</div>
                  </g:if>
                    <span class="glyphicon glyphicon-log-in"></span>Crear
                </h3>
            </div>
            <div class="well well-sm">
                <g:form action="guardarAltaAdministrador" method="post">
                <div class="form-group">

                    <label for="nombreUsuario">Nombre</label>
                    <input type="text" class="form-control" id= "nombre" name="nombreUsuario" placeholder="nombre">
                </div>                
                <div class="form-group">
                    <label for="email">Usuario</label>
                    <input type="text" class="form-control" id= "usuario" name="email" placeholder="example@example.com">
                </div>
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" id= "contrasena" name="password" placeholder="contrasena">
                </div>                

                <input type="submit" name="enviar" value="Guardar" class="btn btn-default"/>
                <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>
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
