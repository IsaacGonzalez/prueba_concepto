class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')

		// esto es para acceder a los controladores del plugin
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")

	}
}
