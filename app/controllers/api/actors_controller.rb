class Api::ActorsController < ApplicationController
  def index
    actors = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def create
    @actors = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      age: params[:age]
      gender: paramas[:gender]
    )
    if @actors.save
      render "show.json.jb"
      else 
        render json: {errors: @actors.error.full_messages}, status: 406
    end
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
    @actors.age
    @actors.gender
    
    if @actors.save
    render "show.json.jb"
    else 
      render json: {errors: @actors.error.full_messages}, status: 406
    end 
  end

  def destroy
    actors = Movie.find_by(id: params[:id])
    actors.destroy
    render json: { message: "Listing deleted" }
  end
end
