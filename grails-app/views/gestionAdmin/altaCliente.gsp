<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Cliente</title>
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
                      <g:if test="${message}">
                        <div class="message" role="status">${message}</div>
                      </g:if>
                        <div class="login-logo">
                            C R E A R
                        </div>
                        <div class="login-form">
                            <form action="guardarAltaCliente" method="post">
                                <div class="form-group">
                                    <label for="nombreUsuario">Nombre</label>
                                    <input type="text" class="form-control" name="nombreUsuario" value="${cliente?.nombreUsuario}" placeholder="Nombre.." class="au-input au-input--full">
                                </div>
                                
                                <div class="form-group">
                                     <label for="usuario">Usuario</label>
                                    <input type="text" class="form-control" name="email" value="${cliente?.email}" placeholder="example@example.com" class="au-input au-input--full">
                                </div>
                                <div class="form-group">
                                    <label for="password">Contraseña</label>
                                    <input type="password" class="form-control" name="password" placeholder="Escribir contraseña.." class="au-input au-input--full">
                                </div>
                                
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit" name="enviar"><g:link controller="RegistroCliente"><strong>Guardar Datos</strong></g:link></button>
                                <a href="javascript:window.history.back();" class="btn btn default">Cancelar</a>
                            </form>
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
