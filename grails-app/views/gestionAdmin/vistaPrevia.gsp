<!Doctype html>
<html>
    <head>
    	<meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Imágen</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <div class="page-wrapper">
        <div class="page-container">
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong class="card-title mb-3">MOSTRAR IM&Aacute;GEN</strong>
                                    </div>
                                    <div class="card-body">
                                        <div class="mx-auto d-block">
                                            <img src=${createLink(controller:"GestionAdmin", action:"verImagen", id:"${params.id}")} width=’500′ />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        	<div class="col-md-5">
                        		<button type="button" class="btn btn-info btn-lg btn-block"><g:link controller="GestionAdmin" action="showDisfraz">Volver</g:link></button>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asset:javascript src="bootstrap.min.js" />
    <asset:javascript src="jquery-1.11.3.min.js" />
    <asset:javascript src="holder.min.js" />
    <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>
