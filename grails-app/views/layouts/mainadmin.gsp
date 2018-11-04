<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width,initial-scale=1">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
    <g:layoutHead/>
    <!--<meta name="layout" content="main"/>
    <title>Tienda de Disfraces</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <asset:stylesheet src="font-face.css"/>
    <asset:stylesheet src="css/font-face.css"/>
    <asset:stylesheet src="fontawesome.min.css"/>
    <asset:stylesheet src="vendor/font-awesome-4.7/css/font-awesome.min.css"/>

    <asset:stylesheet src="theme.css"/>
    <asset:stylesheet src="hamburgers.min.css"/>
    <asset:stylesheet src="vendor/font-awesome-5/css/fontawesome-all.min.css"/>
    <asset:stylesheet src="vendor/mdi-font/css/material-design-iconic-font.min.css"/>
    <asset:stylesheet src="vendor/mdi-font/css/material-design-iconic-font.min.css"/>
    <asset:stylesheet src="vendor/bootstrap-4.1/bootstrap.min.css"/>
    <asset:stylesheet src="vendor/animsition/animsition.min.css"/>
    <asset:stylesheet src="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>
    <asset:stylesheet src="vendor/wow/animate.css"/>
    <asset:stylesheet src="vendor/css-hamburgers/hamburgers.min.css"/>
    <asset:stylesheet src="vendor/slick/slick.css"/>
    <asset:stylesheet src="vendor/select2/select2.min.css"/>
    <asset:stylesheet src="vendor/perfect-scrollbar/perfect-scrollbar.css"/>
    <asset:stylesheet src="css/theme.css"/>-->
    <script src="js/main.js"></script>

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
                <a class="navbar-brand" href="#">
                    <span class="glyphicon glyphicon-globe"></span>Logo
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <!--Login y Salida de Sesion-->
                <g:if test="${session.usuario}">
                    <strong style="color: white;">Login as :  ${session.usuario.nombre}</strong> | <g:link controller="login" action="logout">Salir</g:link>
                </g:if>
                <g:else>
                    <g:link controller="login" action="login">Ingresar al sistema</g:link>
                </g:else>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <g:link action="/#">Inicio</g:link></li>
                        <li>
                        <g:link action="altaDisfraz">Productos</g:link></li>
                        <li>
                        <g:link action="clientes">Clientes</g:link></li>
                    </ul>
                </div>
        </div>
        <!-- /.navbar-collapse -->
    </div>
<!-- /.container -->
</nav>

<<<<<<< HEAD
=======
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
            <div class="list-group ">
                    <ul>
                        <li class="list-group-item"><g:link  action="showCatalogo">catalogo</g:link></li>                            
                    </ul>
<<<<<<< HEAD
                </div>

                  </div>
=======
            </div>

>>>>>>> 637ba2f42bd2d0b39a2f597ff1528b04bac65407
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
                    <div class="list-group ">
                        <ul>
                            <li class="list-group-item"><g:link  action="showCatalogo">catalogo</g:link></li>
                        </ul>
                    </div>
                </div>
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
            </div>
            <div class="col-sm-9">
                <g:layoutBody/>
            </div>
<<<<<<< HEAD

    </div>
=======
<<<<<<< HEAD
    
=======
            </div>
        </div>
    </div>
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
</div>
>>>>>>> 637ba2f42bd2d0b39a2f597ff1528b04bac65407
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
