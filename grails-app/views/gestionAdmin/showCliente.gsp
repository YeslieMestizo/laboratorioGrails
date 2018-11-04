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
        <h1>Gesti&oacute;n de clientes</h1><br>
        <div class="table-responsive m-b-40">
            <div class="container">
                <table class="table table-hover">
                    <tr class="info">
                        <th>C&oacute;digo</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tel&eacute;fono</th>
                        <th>Direcci&oacute;n</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <g:each in="${listado?}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.nombre}</td>
                        <td>${it.apellido}</td>
                        <td>${it.telefono}</td>
                        <td>${it.direccion}</td>
                        <td>${it.usuario}</td>
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