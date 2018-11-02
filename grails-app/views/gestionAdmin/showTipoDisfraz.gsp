<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Cliente</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Gesti&oacute;n de Tipo de Disfraz</h1>
        <div class="table-responsive m-b-40">
        <table class="table table-borderless table-data3">
            <tr>
                <th>C&oacute;digo</th>
                <th>Descripci&oacute;n</th>
            </tr>
            <g:each in="${listado?}">
            <tr>
                <td>${it.id}</td>
                <td>${it.descripcion}</td>
            </tr>
            </g:each>
        </table>
            
        <asset:javascript src="bootstrap.min.js" />    
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>