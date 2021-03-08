class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all.where(english: true)
    render "index.json.jb"
  end

  def create
    @movies = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      english: true,
    )
    if @movies.save
      render "show.json.jb"
    else
      render json: { errors: @actors.error.full_messages }, status: 406
    end
  end

  def show
    id = params[:id]
    @movies = Movie.find(id)
    render "show.json.jb"
  end

  def update
    @movies = Movie.find_by(id: params[:id])
    @movies.title = params[:title] || @movies.title
    @movies.year = params[:year] || @movies.year
    @movies.plot = params[:plot] || @movies.plot
    @movies.english = true
    if @movies.save
      render "show.json.jb"
    else
      render json: { errors: @actors.error.full_messages }, status: 406
    end
  end

  def destroy
    movies = Movie.find_by(id: params[:id])
    movies.destroy
    render json: { message: "Listing deleted" }
  end
end
