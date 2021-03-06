<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Cliente</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <g:link controller="gestionAdmin" action="altaCliente" class="glyphicon-plus btn btn-default">Agregar</g:link>
        <g:form action="busquedaCliente" class="navbar-form navbar-right" role="search">
        <div class="form-group">
            <g:select name="campo" from="${['Nombre','Usuario']}" class="form-control"/>
            <input type="text" name="busqueda" class="form-control" placeholder="Busqueda por ...">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
        </g:form>
        <h1>Gesti&oacute;n de clientes</h1><br>
        <div class="table-responsive m-b-40">
            <div class="container">
                <table class="table table-hover">
                    <tr class="info">
                        <th>C&oacute;digo</th>
                        <th>Nombre</th>
                        <th>Usuario</th>
                        <th>Password</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <g:each in="${listado?}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.nombreUsuario}</td>
                        <td>${it.email}</td>
                        <td>${it.password}</td>
                        <td><g:link action="editarCliente" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="darBajaCliente" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                    </tr>
                    </g:each>
                </table>
            </div>
        
            
        <asset:javascript src="bootstrap.min.js" />    
    <asset:javascript src="jquery-1.11.3.min.js" />
    <asset:javascript src="holder.min.js" />
    <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>