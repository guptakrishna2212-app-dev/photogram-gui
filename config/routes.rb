Rails.application.routes.draw do
  get("/", {:controller => "users", :action => "index" })

  get("/users", {:controller => "users", :action => "index" })

  get("/users/:username", {:controller => "users", :action => "show" })

  get("/photos", {:controller => "photos", :action => "index" })

  get("/photos/:linkphotoid", {:controller => "photos", :action => "show" })


end
