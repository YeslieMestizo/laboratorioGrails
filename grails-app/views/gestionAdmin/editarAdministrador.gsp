<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="mainadmin"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Administrador</title>
    </head>
    <body>
        <h1>Editar</h1>
        <g:form controller="administrador" action="update" resource="${administrador}" method="PUT">
                <g:hiddenField name="version" value="${this.administrador?.version}" />
                <fieldset class="form">
                    <f:all bean="administrador"/>
                </fieldset>
                <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
        </g:form>
    </body>
</html>
