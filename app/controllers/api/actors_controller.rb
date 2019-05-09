class Api::ActorsController < ApplicationController

  def one_actor_action
    @actor = Actor.find_by(id: 2)
    render "one_actor.json.jbuilder"
  end
    
  def all_actors_action
    @actors = Actor.all
    render "all_actors.json.jbuilder"
  end

  def single_actor
    actor = params[:id]
    @single_actor = Actor.find_by(id: actor)

    render 'single_actor.json.jbuilder'
  end

end
