<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Administrador</title>
<<<<<<< HEAD
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />  
    
</head>

<body>
    <g:form action="busquedaAdministrador" class="navbar-form navbar-right" role="search">
        <div class="form-group">
            <input type="text" name="busqueda" class="form-control" placeholder="Busqueda por nombre...">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
    </g:form>
    <h1>Gesti&oacute;n de Administrador</h1>
    
    <div class="table-responsive m-b-40">
=======
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Gesti&oacute;n de Administrador</h1><br>
        <div class="table-responsive m-b-40">
<<<<<<< HEAD
            <div class="container">
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
=======
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
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
>>>>>>> 349ccc9fff117a4b9f49b751eeb7cc0ea19327e0
                    <td>${it.id}</td>
                    <td>${it.nombre}</td>
                    <td>${it.apellido}</td>
                    <td>${it.telefono}</td>
                    <td>${it.usuario}</td>
                    <td>${it.password}</td>
<<<<<<< HEAD
                    <td><g:link action="editarAdministrador" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                    <td><g:link action="darBajaAdministrador" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                </tr>
                </g:each>
            </table>
            </div>
        </div>
=======
                    <td><g:link action="editarAdministrador" id="${it.id}">Editar</g:link></td>
                    <td><g:link action="darBajaAdministrador" id="${it.id}">Eliminar</g:link></td>
                    </tr>
            </g:each>
        </table>

<<<<<<< HEAD
>>>>>>> 349ccc9fff117a4b9f49b751eeb7cc0ea19327e0
        <asset:javascript src="bootstrap.min.js" />    
=======
        <asset:javascript src="bootstrap.min.js" />
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
