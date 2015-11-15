class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'web', action: 'index')
        "/busqueda"(controller: 'web', action: 'busqueda')
        "/categorias"(controller: 'web', action: 'categorias')
        "/perfil"(controller: 'web', action: 'perfil')
        "/comentarios"(controller: 'web', action: 'comentarios')
        "/faq"(controller: 'web', action: 'faq')
        "/nosotros"(controller: 'web', action: 'nosotros')
        "/contacto"(controller: 'web', action: 'contacto')
        "/acerca"(controller: 'web', action: 'acerca')
        "/ingresar"(controller: 'web', action: 'ingresar')
        "/publicar"(controller: 'web', action: 'publicar')
        "/restaurantes"(controller: 'web', action: 'restaurantes')
        "/recetas"(controller: 'web', action: 'recetas')
        "/receta"(controller: 'web', action: 'abrirReceta')
        "/barraBusqueda"(controller: 'web', action: 'barraBusqueda')
        "/resultado"(controller: 'web', action: 'busquedaf')
        "/tipicos"(controller: 'web', action: 'tipicos')
        "/editar_perfil"(controller: 'web', action: 'editarperfilpersona')
        "/resultados"(controller: 'web',action:'busquedatipicos')
        "500"(view:'/error')
        "/conf"(controller: "conf", action: 'index')
    }
}
