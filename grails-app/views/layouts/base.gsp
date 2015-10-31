<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!title>Inicio<!/title>
    <title><g:layoutTitle default="Page"/></title>
    <link rel="icon" type="image/png" href="/images/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="/images/favicon-16x16.png" sizes="16x16" />

    <!link rel="stylesheet" href="${resource(dir: 'css', file: 'main2.css')}" type="text/css">
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="main2.css"/>
    <!link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css.css')}" type="text/css">
    <style>
    @font-face { font-family: Abraham; src: url('../fonts/AbrahamLincoln.ttf'); }
    @font-face { font-family: Cylburn; src: url('../fonts/Cylburn.ttf'); }
    @font-face { font-family: GearedSlab; src: url('../fonts/GearedSlab.ttf'); }
    @font-face { font-family: GrandHotel; src: url('../fonts/GrandHotel-Regular.otf'); }
    @font-face { font-family: Liberator; src: url('../fonts/Liberator-Light.ttf'); }
    </style>
    <g:layoutHead/>
</head>
<body>
<div class="masthead container">

    <nav>
        <ul class="nav nav-justified logo">
            <li><g:img dir="images" file="Logo.png"/>
            <!img src="../../../web-app/images/Logo.png"></li>
            <li>
                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Buscar..." name="srch-term" id="srch-term">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit" id="lupa"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                </form>
            </li>
        </ul>
    </nav>

    <nav>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar" id="boton">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse lista">
            <ul class="nav nav-justified ">
                <li><a href="${createLink(action: 'index')}" role="button">Inicio</a></li>
                <li class="dropdown active"><a href="${createLink(action: 'busqueda')}" class="dropdown-toggle">Búsqueda</a>
                    <ul class="dropdown-menu">
                        <li><a href="${createLink(action: 'restaurantes')}">Restaurantes</a></li>
                        <li><a href="#">Platos típicos</a></li>
                    </ul>
                </li>
                <li class="dropdown active"><a href="${createLink(action: 'categorias')}" class="dropdown-toggle">Categorías</a>
                    <ul class="dropdown-menu">
                        <g:each var="category" in="${categories}">
                            <li><a href="#">${category.name}</a></li>
                        </g:each>
                    </ul>
                </li>
                <li class="dropdown active"><a href="${createLink(controller: 'web', action: 'favoritos')}" class="dropdown-toggle">Favoritos</a>
                    <ul class="dropdown-menu">
                        <li><a href="${createLink(action: 'recetas')}">Recetas</a></li>
                        <li><a href="#">Usuarios</a></li>
                    </ul>
                </li>
                <g:if test="${session.user}">
                    <li class="dropdown active"><a href="${createLink(controller: 'web', action: 'perfil')}" class="dropdown-toggle">${session.user}</a>
                        <ul class="dropdown-menu">
                            <li><a href="${createLink(action: 'perfil')}">Perfil</a></li>
                            <li><a href="${createLink(action: 'publicar')}">Publicar</a></li>
                            <li><g:link controller="user" action="logout">Salir</g:link></li>
                        </ul>
                    </li>
                </g:if>
                <g:else>
                    <li><a href="${createLink(controller: 'web', action: 'ingresar')}" class="dropdown-toggle">Acceder</a></li>
                </g:else>
            </ul>
        </div>
    </nav>
</div>
<g:layoutBody/>
<div class="masthead container">
    <div class="masthead">
        <nav>
            <ul class="nav nav-justified">
                <li><a href="${createLink(action: 'index')}" role="button" class="foot">Inicio</a></li>
                <li><a href="${createLink(action: 'comentarios')}" role="button" class="foot">Comentarios y sugerencias</a></li>
                <li><a href="${createLink(action: 'faq')}" role="button" class="foot">FAQ</a></li>
            </ul>
        </nav>
        <nav>
            <ul class="nav nav-justified">
                <li><a href="${createLink(action: 'nosotros')}" role="button" class="foot">¿Quiénes somos?</a></li>
                <li><a href="${createLink(action: 'contacto')}" role="button" class="foot">Contáctenos</a></li>
                <li><a href="${createLink(action: 'acerca')}" role="button" class="foot">Acerca de...</a></li>
            </ul>
        </nav>
    </div>
</div>

<footer class="footer" id="foot3">
    <div class="container">
        <p class="text">Culinaire - 2015</p>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<asset:javascript src="jquery-1.11.2.min.js"/>
<asset:javascript src="bootstrap.js"/>
</body>
</html>