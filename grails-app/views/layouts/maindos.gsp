<!doctype html>
<html lang="en">
<head>
    <title><g:layoutTitle default="TIENDA"/></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
	<meta name="author" content="Hau Nguyen">
	<meta name="keywords" content="au theme template">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <g:layoutHead/>

    <!--<asset:stylesheet src="font-face.css" media="all"/>
    <asset:stylesheet src="vendor/font-awesome-4.7/css/font-awesome.min.css" media="all"/>
    <asset:stylesheet src="vendor/font-awesome-5/css/fontawesome-all.min.css" media="all"/>
    <asset:stylesheet src="vendor/mdi-font/css/material-design-iconic-font.min.css" media="all"/>

    <asset:stylesheet src="vendor/bootstrap-4.1/bootstrap.min.css"/>
    <asset:stylesheet src="vendor/animsition/animsition.min.css"/>
    <asset:stylesheet src="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>
    <asset:stylesheet src="vendor/wow/animate.css"/>
    <asset:stylesheet src="vendor/css-hamburgers/hamburgers.min.css"/>
    <asset:stylesheet src="vendor/slick/slick.css"/>
    <asset:stylesheet src="vendor/select2/select2.min.css"/>
    <asset:stylesheet src="vendor/perfect-scrollbar/perfect-scrollbar.css"/>
    <asset:stylesheet src="css/theme.css"/>-->
<!---->
    <meta name="layout" content="main"/>
    <title><g:layoutTitle default="Tienda de Disfraces"/></title>
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

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="application.css"/>
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
                <a class="navbar-brand" href="#">
                    <span class="glyphicon glyphicon-globe"></span> Logo
                </a>
            </div>
            
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <g:link action="index">Inicio</g:link></li>
                    <li>
                        <g:link action="altaDisfraz">Productos</g:link></li>
                    <li>
                        <g:link action="clientes">Clientes</g:link></li>
                </ul>
				<form class="navbar-form navbar-right" role="search">
		            <div class="form-group">
		                <input type="text" class="au-input au-input--xl" placeholder="B&uacute;squedas ...">
		            </div>
					<button type="submit" class="au-btn--submit">
						<span class="glyphicon glyphicon-search"></span>Buscar
					</button>
				</form>
            </div>
        </div>
    </nav>
<!---->
    <div class="container-fluid">
            <!-- Left Column -->
        <div class="col-sm-3">
            <!-- List-Group Panel -->
			<div class="panel panel-info">
				<div class="navbar-collapse collapse">
                <!--Login y Salida de Sesion-->
		            <g:if test="${session.usuario}">
		                <strong>Login as : ${session.usuario.nombre}| </strong><g:link controller="login" action="logout">Salir</g:link>
		            </g:if>
		            <g:else>
	                <g:link controller="login" action="login">Ingresar al sistema</g:link>
	            	</g:else>
            	</div>
        	</div>
        </div>
        <div class="col-sm-9">
            <g:layoutBody/>
        </div>
    </div>
<!---->
    <div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search" placeholder="B&uacute;squedas" />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->
			<!-- MAIN CONTENT-->
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
												 <g:link action="editarEliminarDisfraz">Editar/Eliminar</g:link></li>
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
			<!-- END PAGE CONTAINER-->
			<div class="footer" role="contentinfo"></div>
		    <div id="spinner" class="spinner" style="display:none;">
		        <g:message code="spinner.alt" default="Loading&hellip;"/>
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