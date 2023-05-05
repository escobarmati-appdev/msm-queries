class ActorsController < ApplicationController

  def index
  
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  
  end

  def  actor_details
    # params {"an_id"=>"youngest"} 

    @list_of_actors = Actor.all

    @the_id = params.fetch("actor_id")
    @the_actor = Actor.where({ :id => @the_id }).at(0) #get the actor ID
    @character = Character.where({ :actor_id => @the_actor.id }).at(0) #get the character
    
    render({ :template => "actor_templates/actor_details.html.erb"})
  end

end
