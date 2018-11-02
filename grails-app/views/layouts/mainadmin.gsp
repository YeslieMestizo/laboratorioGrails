<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
    <g:layoutHead/>
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Barra de Navegación</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-globe"></span> Logo</a>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <g:link action="index">Home</g:link>
                    </li>
                    <li>
                        <g:link action="altaDisfraz">Productos</g:link>
                    </li>
                    <li>
                        <g:link action="clientes">Clientes</g:link>
                    </li>
                        
                </ul>

		<!-- Search -->
		<form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                            <input type="text" class="form-control">
                    </div>
			<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
		</form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    <div class="container-fluid">
            <!-- Left Column -->
            
            <div class="col-sm-3">
            <!-- List-Group Panel -->
		<div class="panel panel-info">
                    <div class="panel-heading">
                        <h1 class="panel-title"><span class="glyphicon glyphicon-random"></span> Disfraces</h1>
                    </div>
                    <div class="list-group ">
                        <ul>
                            <li class="list-group-item"><g:link action="altaDisfraz">Alta</g:link></li>
                            <li class="list-group-item"><g:link action="showDisfraz">Listado</g:link></li>
                            
                        </ul>
                    </div>
                    <div class="panel-heading">
                        <h1 class="panel-title"><span class="glyphicon glyphicon-random"></span> Clientes</h1>
                    </div>
                    <div class="list-group ">
                        <ul>
                            <li class="list-group-item"><g:link action="altaCliente">Alta</g:link></li>
                            <li class="list-group-item"><g:link action="showCliente">Listado</g:link></li>
                            
                        </ul>
                    </div>
                    <div class="panel-heading">
                        <h1 class="panel-title"><span class="glyphicon glyphicon-random"></span>Administradores</h1>
                    </div>
                    <div class="list-group ">
                        <ul>
                            <li class="list-group-item"><g:link action="altaAdministrador">Alta</g:link></li>
                            <li class="list-group-item"><g:link action="showAdministrador">listado</g:link></li>                           
                        </ul>
                    </div>
                    <div class="panel-heading">
                        <h1 class="panel-title"><span class="glyphicon glyphicon-random"></span>Tipo Disfraz</h1>
                    </div>
                    <div class="list-group ">
                        <ul>
                            <li class="list-group-item"><g:link action="altaTipoDisfraz">Alta</g:link></li>
                            <li class="list-group-item"><g:link action="showTipoDisfraz">listado</g:link></li>                           
                        </ul>
                    </div>
                    <div class="panel-heading">
                        <h1 class="panel-title"><span class="glyphicon glyphicon-random"></span>Alquiler</h1>
                    </div>
                    <div class="list-group ">
                        <ul>
                            <li class="list-group-item"><g:link action="showAlquiler">Listado</g:link></li>                            
                        </ul>
                    </div>
                </div>
                
            </div>
            <div class="col-sm-9">
                <g:layoutBody/>
            </div>
        </div>
    

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>
    <asset:javascript src="bootstrap.min.js" />    
    <asset:javascript src="jquery-1.11.3.min.js" />
    <asset:javascript src="holder.min.js" />
    <asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
