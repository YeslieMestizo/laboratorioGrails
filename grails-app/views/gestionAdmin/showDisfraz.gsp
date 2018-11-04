<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Disfraces</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Gesti&oacute;n de Disfraces</h1>
        <div class="table-responsive m-b-40">
            <div class="container">
                <table class="table table-hover">
                    <tr class="info">
                        <th>C&oacute;digo</th>
                        <th>Descripci&oacute;n</th>
                        <th>Talle</th>
                        <th>G&eacute;nero</th>
                        <th>Tipo</th>
                    </tr>
                    <g:each in="${listado}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.descripcion}</td>
                        <td>${it.talle}</td>
                        <td>${it.genero}</td>
                        <td><g:link action="showTipoDisfraz">${it.tipo.id}</g:link></td>
                        <td><img  src=${createLink(controller:"GestionAdmin", action:"verImagen", id:"${params.id}")} width=’300′ /></td>
                        <td><g:link action="editarDisfraz" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="darBajaDisfraz" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>

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
