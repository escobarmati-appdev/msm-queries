class MoviesController < ApplicationController

  def index
  
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  
  end

  def  movies_details
    # params {"an_id"=>"youngest"} 

    the_id = params.fetch("movie_id")

    @the_movie = Movie.where({ :id => the_id }).at(0) #get the movie ID

    @movie_director_id = @the_movie.director_id #get the director_ID from the movie table

    @director = Director.where( :id => @movie_director_id).at(0) # find director ID in the director table
    
    #@Filmography = Movie.where ({ :director_id => @the_director})  
    
    render({ :template => "movie_templates/movie_details.html.erb"})
  end




end
