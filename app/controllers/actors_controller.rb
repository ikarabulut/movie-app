class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def show
    index = params[:id]
    actor = Actor.find_by(id: index)
    render json: actor.as_json
  end

  def update
    index = params[:id]
    actor = Actor.find_by(id: index)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      first_name: params[first_name],
      last_name: params[last_name],
      known_for: params[known_for]
    )
    actor.save
    render json: actor.as_json
  end

  def destroy
    index = params[:id]
    actor = Actor.find_by(id: index)
    actor.destroy
  end
end
