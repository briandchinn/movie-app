class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render "index.json.jbuilder"
  end

  def create
    @actor = Actor.create(first_name: params[:first_name],
                          last_name: params[:last_name],
                          known_for: params[:known_for],
                          age: params[:age],
                          gender: params[:gender]
                          )
    @actor.save

    if @actor.save
      render "show.json.jbuilder"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end  
  end

  def show
    @actor = Actor.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age


    @actor.save

    if @actor.save
      render "show.json.jbuilder"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "You deleted actor #{params[:id]}"}
  end

end
