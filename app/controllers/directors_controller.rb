# app/models/director.rb
class DirectorsController < ApplicationController

  def index
  
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  
  end

  def wisest

    @oldest_director = Director.all.where.not({ :dob => nil}).order({:dob => :asc }).at(0)

    render({ :template => "director_templates/eldest.html.erb"})
  end

  def  directors_details
    # params {"an_id"=>"youngest"} 

    the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => the_id }).at(0)
    
    render({ :template => "director_templates/director_details.html.erb"})
  end
 
end
