<!doctype html>
<html lang="en">
    <head>
        <title><g:layoutTitle default="TIENDA"/></title>
        <meta charset="UTF-8">
    <asset:link rel="icon" href="logo.png" type="image/x-ico"/>
    <g:layoutHead/>
</head>
<body class="animsition">
    <div class="page-wrapper">
        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
            <div class="container-fluid">
                <div class="header-wrap">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                        <span class="sr-only">Barra de Navegación</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <asset:image src="logo.png" width="100px" class="grails-logo"/>
                    <span> R A Y . c o m </span>
                </div>
                <div class="navbar-collapse collapse" style="float: right;">
                    <!--Login y Salida de Sesion-->
                    <g:if test="${session.usuario}">
                        <strong style="color: white;">Login as :  ${session.usuario.nombre}</strong> | <g:link controller="login" action="logout" class="btn btn-primary">Salir</g:link>
                    </g:if>
                </div>
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="http://localhost:8080">Inicio</a>
                        <li>
                            <g:link action="altaDisfraz">Productos</g:link></li>
                        <li>
                            <g:link action="index">Principal</g:link></li>
                            <li>
                                <a href="javascript:window.history.back();">&laquo; Volver atrás</a></li>
                        </ul>
                </div>
            </div>
        </nav>
        </div>
    <!--  <div class="page-container">
        </div>  -->
        
        <g:layoutBody/>
        <footer>
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>DISFRACES</h4>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-unstyled">
                                            <li>
                                                <g:link action="altaDisfraz">Alta</g:link></li>
                                                <li>
                                                <g:link action="showDisfraz">Listado</g:link></li>
                                            <li>
                                                <g:link action="showAlquiler">Alquiler</g:link></li>
                                            <li>
                                                <g:link action="showCatalogo">catalogo</g:link></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>CLIENTES</h4>
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-unstyled">
                                                <li>
                                                <g:link action="altaCliente">Alta</g:link></li>
                                                <li>
                                                <g:link action="showCliente">Listado</g:link></li>
                                                <li>
                                                <g:link action="editarEliminarCliente">Editar/Eliminar </g:link></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>ADMINISTRADORES</h4>
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-unstyled">
                                                <li>
                                                <g:link action="altaAdministrador">Alta</g:link></li>
                                                <li>
                                                <g:link action="showAdministrador">listado</g:link></li>
                                                <li>
                                                <g:link action="editarEliminarAdministrador">Editar/Eliminar </g:link></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>TIPO DISFRAZ</h4>
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-unstyled">
                                                <li>
                                                <g:link action="altaTipoDisfraz">Alta</g:link></li>
                                                <li>
                                                <g:link action="showTipoDisfraz">listado</g:link></li>
                                                <li>
                                                <g:link action="editarEliminarTipoDisfraz">Editar/Eliminar </g:link></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

</body>
</html>