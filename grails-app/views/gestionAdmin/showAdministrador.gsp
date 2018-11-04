<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Administrador</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />  

=======
<head>
    <meta name="layout" content="mainAdministrador"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gesti&oacute;n de Administrador</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />  
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
</head>
<body>
    <g:form action="busquedaAdministrador" class="navbar-form navbar-right" role="search">
        <div class="form-group">
            <g:select name="campo" from="${['Nombre','Apellido','Usuario']}" class="form-control"/>
            <input type="text" name="busqueda" class="form-control" placeholder="Busqueda por ...">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
    </g:form>
    <h1>Gesti&oacute;n de Administrador</h1>
<<<<<<< HEAD

    <div class="table-responsive m-b-40">
        <table class="table table-borderless table-data3">
            <tr>
                <th>C&oacute;digo</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Tel&eacute;fono</th>
                <th>Usuario</th>
                <th>Contraseña</th>
            </tr>
            <g:each in="${listado?}">
                <tr>
=======
    <div class="table-responsive m-b-40">
            <div class="container-fluid">
                <table class="table table-hover">
                <tr class="info">
                    <th>C&oacute;digo</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Tel&eacute;fono</th>
                    <th>Usuario</th>
                    <th>Contraseña</th>
                    <th></th>
                    <th></th>
                </tr>
                <g:each in="${listado?}">
                <tr class="success">
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
                    <td>${it.id}</td>
                    <td>${it.nombre}</td>
                    <td>${it.apellido}</td>
                    <td>${it.telefono}</td>
                    <td>${it.usuario}</td>
                    <td>${it.password}</td>
<<<<<<< HEAD
                    <td><g:link action="editarAdministrador" id="${it.id}">Editar</g:link></td>
                    <td><g:link action="darBajaAdministrador" id="${it.id}">Eliminar</g:link></td>
                    </tr>
            </g:each>
        </table>
    </div>
<asset:javascript src="bootstrap.min.js" /> 
<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
=======
                    <td><g:link action="editarAdministrador" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                    <td><g:link action="darBajaAdministrador" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                </tr>
                </g:each>
            </table>
            </div>
        </div>
        <asset:javascript src="bootstrap.min.js" />
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
</body>
</html>
