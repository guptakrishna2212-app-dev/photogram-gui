Rails.application.routes.draw do
  get("/", {:controller => "users", :action => "index" })

  get("/users", {:controller => "users", :action => "index" })

  get("/users/:username", {:controller => "users", :action => "show" })

  get("/photos", {:controller => "photos", :action => "index" })

  get("/photos/:linkphotoid", {:controller => "photos", :action => "show" })

  get("/delete_photo/:toast_id", {:controller => "photos", :action => "bye" })

  get("/insert_photo", {:controller => "photos", :action => "create" })

  get("/insert_username", {:controller => "users", :action => "create" })

  get("/update_user", {:controller => "users", :action => "update_user" })

  get("/new_comment", {:controller => "comments", :action => "new_comment"})
end
