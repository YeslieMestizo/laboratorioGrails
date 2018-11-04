<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
<<<<<<< HEAD
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css"/>
=======
        
>>>>>>> 349ccc9fff117a4b9f49b751eeb7cc0ea19327e0
    </head>
    <body>
        <h1>Editar</h1>
        <g:form controller="gestionAdmin" action="actualizarCliente" method="POST">
            <g:hiddenField name="version" value="${this.cliente?.version}"/>
            <g:hiddenField name="id" value="${this.cliente?.id}" />
            <fieldset class="form">
                <f:all bean="cliente"/>
            </fieldset>
            <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
        </g:form>
    </body>
</html>