class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		// "/"(view:"/index")

		
		//"/"(controller: "Login", action:"getUsuarios" )
		//"/"(controller: "Login", action: "index" )
		"/"(view:"/login")


		"500"(view:'/error')
	}
}
