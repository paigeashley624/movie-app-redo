class Api::MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.all.where(english: true)
    render "index.json.jb"
    # if current_user
    #   @movies = Movie.all.where(english: true)
    #   render "index.json.jb"
    # else
    #   render json: []
    # end
  end

  def show
    id = params[:id]
    @movies = Movie.find(id)
    render "show.json.jb"
  end

  def create
    @movies = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: true,
      image: params[:image],
      # user_id: current_user.id,
    )
    if @movies.save
      render "show.json.jb"
    else
      render json: { errors: @movies.error.full_messages }, status: 406
    end
  end

  def update
    @movies = Movie.find_by(id: params[:id])
    @movies.title = params[:title] || @movies.title
    @movies.year = params[:year] || @movies.year
    @movies.plot = params[:plot] || @movies.plot
    @movies.director = params[:director] || @movies.director
    @movies.image = params[:image] || @movies.image
    @movies.english = true

    if @movies.save
      render "show.json.jb"
    else
      render json: { errors: @movies.error.full_messages }, status: 406
    end
  end

  def destroy
    movies = Movie.find_by(id: params[:id])
    movies.destroy
    render json: { message: "Listing deleted" }
  end
end
