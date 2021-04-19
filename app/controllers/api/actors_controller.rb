class Api::ActorsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @actors = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @actor = Actor.find(id)
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id],
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actors.error.full_messages }, status: 406
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.age
    @actor.gender

    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.error.full_messages }, status: 406
    end
  end

  def destroy
    actors = Movie.find_by(id: params[:id])
    actors.destroy
    render json: { message: "Listing deleted" }
  end
end
