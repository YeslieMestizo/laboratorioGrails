<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Tipo Disfraz</title>
    </head>
    <body>
        <h1>Editar</h1>
        <g:form controller="gestionAdmin" action="actualizarTipoDisfraz"  method="POST">
                <g:hiddenField name="version" value="${this.tipoDisfraz?.version}" />
                <g:hiddenField name="id" value="${this.tipoDisfraz?.id}" />
                <fieldset class="form">
                    <f:all bean="tipoDisfraz"/>
                </fieldset>
                <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
        </g:form>
    </body>
</html>