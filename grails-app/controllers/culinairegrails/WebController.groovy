package culinairegrails

class WebController {
    def index() {
        [categories:Category.list()]
    }
    def busqueda() {
        [categories:Category.list(), countries:Country.list(), difficulties:Difficulty.list(), ingredients:Ingredient.list(),
         durations: Duration.list()]
    }
    def busquedaf() {
        def ingrediente= params.ingredienteB
        def categoria= params.categoriaB
        def duracion=params.duracionB
        def dificultad=params.dificultadB
        def boton=params.bsubmit
        def filtro1=[]
        def filtro2=[]
        def filtro3=[]
        def filtro4=[]
        //filtro1
        Recipe.list().each {ito->ito.each {
            c->c.quantities.each {ingre->
                if("Ninguna"==ingrediente){
                    filtro1=Recipe.list()
                }
                else
                if(ingre.ingredient.name==ingrediente){
                    filtro1.add(ito)
                }
            }
        }
        }

        //filtro2
        filtro1.each {ito->
            if("Ninguna"==categoria){
                filtro2=filtro1
            }
            else
            if(ito.category.name==categoria){
                filtro2.add(ito)
            }
        }
        //filtro3
        filtro2.each {ito->
            if("Ninguna"==duracion) {
                filtro3 = filtro2
            }
            else
            if(ito.duration.duration==duracion){
                filtro3.add(ito)
            }
        }
        //filtro4
        filtro3.each {ito->
            if("Ninguna"==dificultad) {
                filtro4 = filtro3
            }
            else
            if(ito.difficulty.level==dificultad){
                filtro4.add(ito)
            }
        }
        if(boton=="Buscar")
            render(view: "Recetas",model:[categories: Category.list(), recipes: filtro4])
        if (boton=="Aleatorio"){
            if(filtro4.size()> 1) {
                int numeroAleatorio = (int) (Math.random() * (filtro4.size() - 1)+0.2)

                def resul = filtro4[numeroAleatorio]
                render(view: "Recetas", model: [categories: Category.list(), recipes: resul])
            }
            else
                render(view: "Recetas", model: [categories: Category.list(), recipes: filtro4])
        }
    }

    def categorias() {
        [categories:Category.list()]
    }
    def favoritos() {
        [categories:Category.list()]
    }
    def perfil() {
        if(session.user == null) {
            redirect(action: 'ingresar')
        }
        render(view: 'perfil', model:[person:Person.findByUsername(session.user), categories:Category.list()])
    }
    def perfil2() {
        [categories:Category.list()]
    }
    def comentarios() {
        [categories:Category.list()]
    }
    def faq() {
        [categories:Category.list()]
    }
    def nosotros() {
        [categories:Category.list()]
    }
    def contacto() {
        [categories:Category.list()]
    }
    def acerca() {
        [categories:Category.list()]
    }
    def ingresar() {
        [categories:Category.list(), countries:Country.list()]
    }
    def publicar() {
        [categories:Category.list(), countries:Country.list(), difficulties: Difficulty.list(), durations: Duration.list()]
    }
    def restaurantes() {
        [categories:Category.list(), restaurants:Restaurant.list()]
    }
    def recetas() {
        [categories: Category.list(), recipes: Recipe.list()]
    }

    def barraBusqueda(){
        render(view: 'resultadoBusqueda',  model:[personas:Person.getAll(), restaurantes:Restaurant.getAll(), recetas:Recipe.getAll(), categories: Category.list()])
    }

    def findCategory(){
        def category = Category.findByName(params.category)
        render(view: 'recetas',  model:[recipes: Recipe.findByCategory(category), categories: Category.list()])
    }

    def abrirReceta(){
        render(view: 'receta',  model:[recipe: Recipe.findByName(params.name), categories: Category.list()])
    }
}
