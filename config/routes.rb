Rails.application.routes.draw do

  namespace :api do
    get "/one_actor" => "actors#one_actor_action"
    get "/all_actors" => "actors#all_actors_action"
    get "/all_movies" => "movies#all_movies_action"
    get "/first_movie" => "movies#first_movie_action"
  end
end
