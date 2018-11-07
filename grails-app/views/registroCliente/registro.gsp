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
    <div class="container">
        <g:hasErrors bean="${cliente}">
        <div class="errors">
            <g:renderErrors bean="${cliente}"></g:renderErrors>
        </div>
      </g:hasErrors>
    </div>
      
    <div class="page-wrapper">
        <div class="page-content--bge10" style="background-color: lightgray;">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            R E G I S T R A R S E
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
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit"><g:link controller="RegistroCliente"><strong>Guardar Datos</strong></g:link></button>
                                <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>
                            </form>
                            <div class="register-link">
                                <p>
                                    Ya tienes una cuenta?
                                    <g:link controller="Login"><strong>Ingresar</strong></g:link>
                                </p>
                            </div>
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