Rails.application.routes.draw do
  root to: "users#index"
  devise_for :users

#user
get("/users", { :controller => "users", :action => "index"})
post("/users/edit", { :controller => "users", :action => "edit"})
get("/users/:username", { :controller => "users", :action => "profile"})
get("/users/:username/liked_photos", { :controller => "users", :action => "liked_photos"})
get("/users/:username/feed", { :controller => "users", :action => "feed"})
get("/users/:username/discover", { :controller => "users", :action => "discover"})

#follow request 
post("/insert_follow_request", { :controller => "follow_requests", :action => "create"})
get("/follow_request/:path_id", { :controller => "follow_requests", :action => "show"})
post("/modify_follow_request/:path_id", { :controller => "follow_requests", :action => "update"})
get("/delete_follow_request/:path_id", { :controller => "follow_requests", :action => "destroy" })

#like 
post("/insert_like", { :controller => "likes", :action => "create" })
post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

#comment
post("/insert_comment", { :controller => "comments", :action => "create" })

#photo
post("/insert_photo", { :controller => "photos", :action => "create" })
get("/photos", { :controller => "photos", :action => "index" })
get("/photos/:path_id", { :controller => "photos", :action => "show" })
post("/modify_photo/:path_id", { :controller => "photos", :action => "update" })
get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

  