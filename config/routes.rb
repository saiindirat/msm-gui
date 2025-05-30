Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  # DIRECTORS 
  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/insert_director_record", { :controller => "directors", :action => "create" })
  post("/update_director/:path_id", { :controller => "directors", :action => "update" })
  get("/delete_director/:path_id", { :controller => "directors", :action => "destroy" })

  # MOVIES
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie_record", { :controller => "movies", :action => "create" })
  post("/update_movie/:path_id", { :controller => "movies", :action => "update" })
  get("/delete_movie/:path_id", { :controller => "movies", :action => "destroy" })

  # ACTORS
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor_record", { :controller => "actors", :action => "create" })
  post("/update_actor/:path_id", { :controller => "actors", :action => "update" })
  get("/delete_actor/:path_id", { :controller => "actors", :action => "destroy" })
end
