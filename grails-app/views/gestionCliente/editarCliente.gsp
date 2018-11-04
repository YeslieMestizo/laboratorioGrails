<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
    </head>
    <body>
        <h1>Editar</h1>
        <g:form controller="gestionAdmin" action="actualizarCliente"  method="POST">
            <g:hiddenField name="version" value="${this.cliente?.version}" />
            <g:hiddenField name="id" value="${this.cliente?.id}" />
            <fieldset class="form">
                <f:all bean="cliente" class="form-control"/>
            </fieldset>
            <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
        </g:form>
    </body>
</html>