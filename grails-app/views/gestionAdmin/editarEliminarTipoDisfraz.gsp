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
        <title>Sample title</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Editar/Eliminar Tipo de Disfraz</h1>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="table-responsive m-b-40">
                    <table class="table table-borderless table-data3">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Descripcion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${listado?}">
                            <tr>
                                <td>${it.id}</td>
                                <td>${it.descripcion}</td>
                                <td><g:link action="editarTipoDisfraz" id="${it.id}">Editar</g:link></td>
                                <td><g:link action="darBajaTipoDisfraz" id="${it.id}">Eliminar</g:link></td>
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
