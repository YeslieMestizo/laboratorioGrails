<!doctype html>
<html lang="en">
<head>
    <!--
    
    <asset:link rel="icon" href="logo.png" type="image/x-ico"/>
    <asset:stylesheet src="css/font-face.css"/>
    <asset:stylesheet src="fontawesome.min.css"/>
    <asset:stylesheet src="vendor/font-awesome-4.7/css/font-awesome.min.css"/>
    <asset:stylesheet src="theme.css"/>
    <asset:stylesheet src="hamburgers.min.css"/>
    <asset:stylesheet src="vendor/font-awesome-5/css/fontawesome-all.min.css"/>
    <asset:stylesheet src="vendor/mdi-font/css/material-design-iconic-font.min.css"/>
    <g:layoutHead/>-->
    <title><g:layoutTitle default="TIENDA"/></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">
    <asset:link rel="icon" href="logo.png" type="image/x-ico"/>
    <g:layoutHead/>
    <asset:stylesheet src="font-face.css"/>
    <asset:stylesheet src="css/font-face.css"/>
    <asset:stylesheet src="fontawesome.min.css"/>
    <asset:stylesheet src="vendor/font-awesome-4.7/css/font-awesome.min.css"/>
    <asset:stylesheet src="theme.css"/>
    <asset:stylesheet src="hamburgers.min.css"/>
    <asset:stylesheet src="vendor/font-awesome-5/css/fontawesome-all.min.css"/>
    <asset:stylesheet src="vendor/mdi-font/css/material-design-iconic-font.min.css"/>
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
                <asset:image src="logo.png" width="100px"/>
                <span> R A Y . c o m </span>
            </div>
            <div class="navbar-collapse collapse" style="float: right;">
                <!--Login y Salida de Sesion-->
                <g:if test="${session.usuario}">
                    <strong style="color: white;">Login as : ${session.usuario.nombre}</strong> | <g:link controller="login" action="logout" class="btn btn-primary">Salir</g:link>
                </g:if>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                    	<a href="http://localhost:8080">Inicio</a></li>
                    <li>
                        <g:link action="altaDisfraz">Productos</g:link></li>
                    <li>
                        <a href="javascript:window.history.back();">&laquo; Volver atrás</a></li>
                </ul>
            </div>
        </div>
    </nav>
<!---->
    <g:layoutBody/>
<!---->
    <div class="page-container">
		<div class="footer" role="contentinfo"></div>
		    <div id="spinner" class="spinner" style="display:none;">
		        <g:message code="spinner.alt" default="Loading&hellip;"/>
		    </div>
		</div>
    </div>

		<script src="vendor/jquery-3.2.1.min.js"></script>
		<script src="vendor/bootstrap-4.1/popper.min.js"></script>
		<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
		<script src="vendor/slick/slick.min.js"></script>
		<script src="vendor/wow/wow.min.js"></script>
		<script src="vendor/animsition/animsition.min.js"></script>
		<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
		<script src="vendor/counter-up/jquery.counterup.min.js"></script>
		<script src="vendor/circle-progress/circle-progress.min.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
		<script src="vendor/chartjs/Chart.bundle.min.js"></script>
		<script src="vendor/select2/select2.min.js">
		</script>
		<script src="js/main.js"></script>
	</body>
</html>