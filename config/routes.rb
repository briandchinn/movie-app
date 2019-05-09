Rails.application.routes.draw do

  namespace :api do
    get "/one_actor" => "actors#one_actor_action"
    get "/all_actors" => "actors#all_actors_action"
    get "/all_movies" => "movies#all_movies_action"
    get "/first_movie" => "movies#first_movie_action"

    # for params homewark in w02
    get "/single_query" => "actors#single_actor"
    get "/single_segment/:id" => "actors#single_actor"
    post "/single_body" => "actors#single_actor"
  end
end
