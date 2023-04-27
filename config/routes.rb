Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  # add youngest directors

  get("/directors/:an_id", { :controller => "directors", :action => "directors_details" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/:movie_id", { :controller => "movies", :action => "movies_details" })
end
