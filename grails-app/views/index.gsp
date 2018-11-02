<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Tienda de Disfraces</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

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
    <asset:stylesheet src="css/theme.css"/>
    <script src="js/main.js"></script>
    
</head>
<body>
    <!--<content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li>
                    <a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li>
                    <a href="#">App version:
                    <g:meta name="info.app.version"/></a></li>
                <li role="separator" class="divider"></li>
                <li>
                    <a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a></li>
                <li>
                    <a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li>
                    <a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li>
                    <a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li>
                    <a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li>
                    <a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li>
                    <a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li>
                        <a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>-->

    <section class="welcome2 p-t-40 p-b-55">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="au-breadcrumb3">
                            <div class="au-breadcrumb-left">
                                <span class="au-breadcrumb-span">Usted esta aqu&iacute;:</span>
                                <ul class="list-unstyled list-inline au-breadcrumb__list">
                                    <li class="list-inline-item active">
                                        <a href="#">INICIO</a>
                                    </li>
                                    <li class="list-inline-item seprate">
                                        <span>/</span>
                                    </li>
                                    <li class="list-inline-item">INDICE</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="welcome2-inner m-t-60">
                            <div class="welcome2-greeting">
                                <h1 class="title-6">Hola
                                    <span>,</span> bienvenido a R A Y.com</h1>
                                <p>La mejor tienda de disfraces, aqui podr&aacute;s conseguir muy buenas opciones!:)</p>
                            </div>
                            <form class="form-header form-header2" action="" method="post">
                                <input class="au-input au-input--w435" type="text" name="search" placeholder="B&uacute;squedas">
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="page-container3">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3">
                            <!-- MENU SIDEBAR-->
                            <aside class="menu-sidebar3 js-spe-sidebar">
                                <nav class="navbar-sidebar2 navbar-sidebar3">
                                    <ul class="list-unstyled navbar__list">
                                        
                                        <li class="bg-info">
                                            <g:link controller="Administrador">Administradores</g:link>
                                        </li>
                                        <li class="bg-danger">
                                            <g:link controller="Disfraz">Disfraces</g:link>
                                        </li>
                                        <li class="bg-info">
                                            <g:link controller="GestionAdmin">Admin</g:link>
                                        </li>
                                        <li class="bg-danger">
                                            <g:link controller="Login">Ingresar</g:link>
                                        </li>
                                        <li class="bg-info">
                                            <g:link controller="RegistroCliente">Registrarse</g:link>
                                        </li>
                                    </ul>
                                </nav>
                            </aside>
                            <!-- END MENU SIDEBAR-->
                        </div>
                        <div class="col-xl-9">
                            <!-- PAGE CONTENT-->
                            
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="copyright">
                                            <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END PAGE CONTENT-->
                        </div>
                    </div>
                </div>
            </section>
        </div>
<script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js"></script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js"></script>

    <!-- Main JS-->
    <script src="javascripts/main.js"></script>
</body>
</html>