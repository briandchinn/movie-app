class Api::MoviesController < ApplicationController

  def all_movies_action
    @movies = Movie.all
    render "all_movies.json.jbuilder"
  end

  def first_movie_action
    @movies = Movie.first
    render "first_movie.json.jbuilder"
  end
end
