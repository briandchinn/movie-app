class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.where(english: "TRUE")
    render "index.json.jbuilder"
  end

  def create
    @movie = Movie.create(title: params[:title],
                          year: params[:year],
                          plot: params[:plot],
                          director: params[:director],
                          english: params[:english]
                          )
    @movie.save

    if @movie.save
      render "show.json.jbuilder"
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english

    @movie.save
    if @movie.save
      render "show.json.jbuilder"
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "You deleted movie #{params[:id]}"}
  end
  
end
