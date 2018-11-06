<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Administrador</title>
<<<<<<< HEAD
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css"/>
    </head>
    <body>
        <h1>Editar</h1>
        <g:form controller="gestionAdmin" action="actualizarAdministrador"  method="POST">
            <g:hiddenField name="version" value="${this.administrador?.version}" />
            <g:hiddenField name="id" value="${this.administrador?.id}" />
            <fieldset class="form">
                <f:all bean="administrador"/>
            </fieldset>
            <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}"/>
            </fieldset>
        </g:form>
        
    </body>
=======
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css"/>
</head>
<body>
    <h1>Editar</h1>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="well well-sm">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-log-in"></span>Editar
                    </h3>
                </div>
                <div class="well well-sm">
                    <g:form action="actualizarAdministrador" method="post">
                        <g:hiddenField name="version" value="${this.administrador?.version}" />
                        <g:hiddenField name="id" value="${this.administrador?.id}" />
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" name="nombre" value="${administrador.nombre}">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" name="apellido" value="${administrador.apellido}">
                        </div>
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" name="usuario" value="${administrador.usuario}">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" class="form-control" name="password" value="${administrador.password}">
                        </div>
                        <div class="form-group">
                            <label for="telefono">Tel&eacute;fono</label>
                            <input type="text" class="form-control" name="telefono" value="${administrador.telefono}">
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
>>>>>>> cc124f449f913dec460c9cdc7609902b6f29b914
</html>