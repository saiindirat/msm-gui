class MoviesController < ApplicationController
  def index
    matching_movies = Movie.all
    @list_of_movies = matching_movies.order({ :created_at => :desc })

    render({ :template => "movie_templates/index" })
  end

  def show
    the_id = params.fetch("path_id")
    matching_movies = Movie.where({ :id => the_id })
    @the_movie = matching_movies.at(0)

    render({ :template => "movie_templates/show" })
  end

  def create
    m = Movie.new
    m.title = params.fetch("the_title")
    m.year = params.fetch("the_year")
    m.duration = params.fetch("the_duration")
    m.description = params.fetch("the_description")
    m.image = params.fetch("the_image")
    m.director_id = params.fetch("the_director_id")

    m.save
    redirect_to("/movies")
  end

  def update
    the_id = params.fetch("path_id")
    m = Movie.where({ :id => the_id }).at(0)

    # Only updating image for now (you can add more fields later)
    m.image = params.fetch("the_image")
    m.save

    redirect_to("/movies/#{m.id}")
  end

  def destroy
    the_id = params.fetch("path_id")
    m = Movie.where({ :id => the_id }).at(0)
    m.destroy

    redirect_to("/movies")
  end
end
