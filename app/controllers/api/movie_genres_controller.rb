class Api::MovieGenresController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def create
    @moviegenre = MovieGenre.create(
                          movie_id: params[:movie_id],
                          genre_id: params[:genre_id]
                          )
    @moviegenre

    if @moviegenre
      render "show.json.jbuilder"
    else
      render json: {errors: @moviegenre.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
