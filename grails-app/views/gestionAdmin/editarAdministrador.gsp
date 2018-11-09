<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Administrador</title>
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
                            <input type="text" class="form-control" name="nombreUsuario" value="${administrador.nombreUsuario}">
                        </div>                       
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" name="email" value="${administrador.email}">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" class="form-control" name="password" value="${administrador.password}">
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
<<<<<<< HEAD
</html>
=======
<<<<<<< HEAD
</html>
=======
<<<<<<< HEAD
</html>
=======
</html>
>>>>>>> a1e647305293c522db912bf67d61331a111f86cf
>>>>>>> df3574264bd979ae2abbe2844a40ec56077270bd
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
