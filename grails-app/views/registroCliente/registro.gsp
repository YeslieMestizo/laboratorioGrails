<!Doctype html>
<html>
<head>
    <meta name="layout" content="mainClient"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="custom.css" />
</head>
<body id="body">
    <h2>Registro</h2>
    <p>Complete los datos solicitados</p>
      <g:hasErrors bean="${cliente}">
        <div class="errors">
      <g:renderErrors bean="${cliente}"></g:renderErrors>
        </div>
      </g:hasErrors>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-log-in"></span>
                        Complete los datos solicitados
                    </h3>
                </div>
                <div class="well well-sm">
                    <g:form action="registro" method="post">
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" name="nombre" value="${cliente?.nombre}">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" name="apellido" value="${cliente?.apellido}">
                        </div>
                        <div class="form-group">
                            <label for="telefono">Tel&eacute;fono</label>
                            <input type="text" class="form-control" name="telefono" value="${cliente?.telefono}">
                        </div>
                        <div class="form-group">
                            <label for="direccion">Direcci&oacute;n</label>
                            <input type="text" class="form-control" name="direccion" value="${cliente?.direccion}">
                        </div>
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" name="usuario" value="${cliente?.usuario}">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" class="form-control" name="password" placeholder="Escribir contraseña">
                        </div>
                        <div class="form-group">
                            <label for="confirmacion">Confirmar Contraseña</label>
                            <input type="password" class="form-control" name="confirmacion" placeholder="Confirmar contraseña">
                        </div>
                        <input type="submit" name="enviar" value="Guardar" class="btn btn-default" />
                        <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>

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