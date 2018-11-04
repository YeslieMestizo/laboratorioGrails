<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
    </head>
    <body>
        <h1>Editar</h1>
        <g:form controller="gestionAdmin" action="actualizarDisfraz"  method="POST">
                <g:hiddenField name="version" value="${this.disfraz?.version}" />
                <g:hiddenField name="id" value="${this.disfraz?.id}" />
                <fieldset class="form">
                    <f:all bean="disfraz"/>
                </fieldset>
                <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
        </g:form>
    </body>
</html>