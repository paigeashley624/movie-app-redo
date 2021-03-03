class Api::ActorsController < ApplicationController
  def index
    actors = Actor.all
    render "index.json.jb"
  end

  def create
    @actors = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
    )
    @actors.save
    render "show.json.jb"
  end

  def show
    id = params[:id]
    @actors = Actor.find(id)
    render "show.json.jb"
  end

  def update
    @actors = Actor.find_by(id: params[:id])
    @actors.first_name = params[:first_name] || @actors.first_name
    @actors.last_name = params[:last_name] || @actors.last_name
    @actors.known_for = params[:known_for] || @actors.known_for
    @actors.save
    render "show.json.jb"
  end

  def destroy
    actors = Movie.find_by(id: params[:id])
    actors.destroy
    render json: { message: "Listing deleted" }
  end
end
