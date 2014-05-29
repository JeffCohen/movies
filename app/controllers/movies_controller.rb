class MoviesController < ApplicationController

  def create
    Movie.create("title" => params["title"],
                 "year" => params["year"],
                 "poster_url" => params["url"],
                 "director_id" => params["chosen_director_id"],
                 "page_count" => 0)

    redirect_to "/movies"
  end
end
