<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Cliente</title>
<<<<<<< HEAD
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
        <asset:stylesheet src="bootstrap.min.css"/>
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
                              <g:if test="${message}">
                                <div class="message" role="status">${message}</div>
                              </g:if>
                            <span class="glyphicon glyphicon-log-in"></span>
                            Crear
                            </h3>
                        </div>
                        <div class="well well-sm">
                            <g:form action="guardarAltaCliente" method="post">
                            <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" value=${cliente.nombre}>
                                    </div>
                                    <div class="form-group">
                                        <label for="apellido">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" value=${cliente.apellido}>
                            </div>
                                    <div class="form-group">
                                        <label for="telefono">Tel&eacute;fono</label>
                                        <input type="text" class="form-control" name="telefono" value=${cliente.telefono}>
                                    </div>
                            <div class="form-group">
                                        <label for="direccion">Direcci&oacute;n</label>
                                        <input type="text" class="form-control" name="direccion" value=${cliente.direccion}>
                            </div>
                                    <div class="form-group">
                                        <label for="usuario">Usuario</label>
                                        <input type="text" class="form-control" name="usuario" value=${cliente.usuario}>
                            </div>
                                    <div class="form-group">
                                        <label for="password">Contraseña</label>
                                        <input type="password" class="form-control" name="password" value=${cliente.password}>
                            </div>
                                        <input type="submit" name="enviar" value="Guardar" class="btn btn-default" />
                            </g:form>
=======
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <h1>Nuevo Cliente</h1>
    

     <div class="page-wrapper">
        <div class="page-content--bge10" style="background-color: lightgray;">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            C R E A R
                        </div>
                        <div class="login-form">
                            <form action="registro" method="post">
                                <div class="form-group">
                                    <label for="nombre">Nombre</label>
                                    <input type="text" class="form-control" name="nombre" value="${cliente?.nombre}" placeholder="Nombre.." class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                    <label for="apellido">Apellido</label>
                                    <input type="text" class="form-control" name="apellido" value="${cliente?.apellido}" placeholder="Apellido.." class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                    <label for="telefono">Tel&eacute;fono</label>
                                    <input type="text" class="form-control" name="telefono" value="${cliente?.telefono}" placeholder="381-322363" class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                    <label for="direccion">Direcci&oacute;n</label>
                                    <input type="text" class="form-control" name="direccion" value="${cliente?.direccion}" placeholder="Calle/Avenida.." class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                     <label for="usuario">Usuario</label>
                                    <input type="text" class="form-control" name="usuario" value="${cliente?.usuario}" placeholder="Usuario.." class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                    <label for="password">Contraseña</label>
                                    <input type="password" class="form-control" name="password" placeholder="Escribir contraseña.." class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                    <label for="confirmacion">Confirmar Contraseña</label>
                                    <input type="password" class="form-control" name="confirmacion" placeholder="Confirmar contraseña" class="au-input au-input--full">
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit" name="enviar"><g:link controller="RegistroCliente"><strong>Guardar Datos</strong></g:link></button>
                                <a href="javascript:window.history.back();" class="btn btn default">Cancelar</a>
                            </form>
>>>>>>> a8a647b553c1a3301070a7aaf98202275883057f
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
