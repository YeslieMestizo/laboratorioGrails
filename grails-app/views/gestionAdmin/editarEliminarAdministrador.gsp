<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar/Eliminar</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Editar/Elimiar Administrador</h1>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="table-responsive m-b-40">
                    <table class="table table-borderless table-data3">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Telefono</th>
                                <th>Usuario</th>
                                <th>Contraseña</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${listado?}">
                            <tr>
                                <td>${it.id}</td>
                                <td>${it.nombre}</td>
                                <td>${it.apellido}</td>
                                <td>${it.telefono}</td>
                                <td>${it.usuario}</td>
                                <td>${it.contrasena}</td>
                                <td><g:link action="editarAdministrador" id="${it.id}">Editar</g:link></td>
                                <td><g:link action="darBajaAdministrador" id="${it.id}">Eliminar</g:link></td>
                            </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </body>
</html>
