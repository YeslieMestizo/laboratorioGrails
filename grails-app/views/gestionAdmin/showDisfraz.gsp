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
    <div class="form-group">
        <div class="row">
            <div class="col-sm-6">
                <div class="btn-group">
                    <g:link controller="gestionAdmin" action="altaDisfraz" class="glyphicon-plus btn btn-default">Agregar</g:link>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            G&eacute;nero<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li ><g:link action="busquedaDisfraz" params="[campo:'F']"  >Femenino</g:link></li>
                        <li ><g:link action="busquedaDisfraz" params="[campo:'Mas']" >Masculino</g:link></li>
                        </ul>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Talle <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><g:link action="busquedaDisfraz" params="[campo:'XS']" >XS</g:link></li>
                        <li><g:link action="busquedaDisfraz" params="[campo:'S']" >S</g:link></li>
                        <li><g:link action="busquedaDisfraz" params="[campo:'M']" >M</g:link></li>
                        <li><g:link action="busquedaDisfraz" params="[campo:'L']" >L</g:link></li>
                        <li><g:link action="busquedaDisfraz" params="[campo:'XL']" >XL</g:link></li>
                        <li><g:link action="busquedaDisfraz" params="[campo:'XXL']" >XXL</g:link></li>

                    </ul>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tipo <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <g:each in="${tipoList}">
                            <li><g:link action="busquedaDisfraz" params="[campo: "${it.id}"]">${it.descripcion}</g:link></li>
                            </g:each>
                    </ul>
                </div>
            </div>   
            <div class="col-sm-6">                 
                <g:form action="busquedaDisfraz" class="navbar-form navbar-right" role="search">
                    <input type="text" name="descripcion" class="form-control" placeholder="Busqueda por descripcion...">
                    <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
                </g:form>
            </div>  
        </div>
    </div>

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
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <g:each in="${listado}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.descripcion}</td>
                        <td>${it.talle}</td>
                        <td>${it.genero}</td>
                        <td><g:link action="showTipoDisfraz">${it.tipo.id}</g:link></td>
                        <td><g:link controller="GestionAdmin" action="vistaPrevia" id="${it.id}">Imágen</g:link></td>
                        <td><g:link action="editarDisfraz" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="darBajaDisfraz" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                       
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>