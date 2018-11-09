<!doctype html>
<html>
<head>
    <meta name="layout" content="mainClient"/>
    <title>Login</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />

</head>
<body>
  <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                          <g:if test="${message}">
                            <div class="message" role="status">${message}</div>
                          </g:if>
                            L O G I N
                        </div>
                        <div class="login-form">
                            <g:form controller="login" action="login" method="post" class="form-group row">
                                <div class="form-group">
                                    <label for='email'>Usuario:</label>
                                    <input type="text" id="usuario" name="email" class="au-input au-input--full" placeholder="Usuario...">
                                </div>
                                <div class="form-group">
                                    <label>Contraseña:</label>
                                    <input type="password" id="password" name="password" class="au-input au-input--full" placeholder="Contraseña...">
                                </div>
                                <br>
                                <input type="submit" value="I n g r e s a r" class="au-btn au-btn--block au-btn--green m-b-20"/>
                            </g:form>
                            <div class="register-link">
                                <p>
                                    No tienes una cuenta?
                                    <g:link controller="registroCliente" action="registro">Registrarse
                                </g:link>
                                </p>
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
