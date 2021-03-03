class Api::ActorsController < ApplicationController
  def show
    id = params[:id]
    @actors = Actor.find(id)
    render "show.json.jb"
  end
end
