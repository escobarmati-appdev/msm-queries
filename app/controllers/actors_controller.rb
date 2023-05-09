class ActorsController < ApplicationController

  def index
  
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  
  end

  def  actor_details
    # params {"an_id"=>"youngest"} 

    @list_of_actors = Actor.all
    @list_of_characters = Character.all
    @list_of_movies = Movie.all

    @the_id = params.fetch("actor_id")
    @the_actor = Actor.where({ :id => @the_id }).at(0) #get the actor ID
    @characters = Character.where({ :actor_id => @the_actor.id }) #get the character




    # the_id = params.fetch("an_id")
    # @the_director = Director.where({ :id => the_id }).at(0)
    # @Filmography = Movie.where ({ :director_id => @the_director})  


    
    render({ :template => "actor_templates/actor_details.html.erb"})
  end

end
