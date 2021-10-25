class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render json: actors
  end

  def show
    index = params[:id]
    actor = Actor.find_by(id: index)
    render json: actor
  end

  def update
    index = params[:id]
    actor = Actor.find_by(id: index)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.gender = params["gender"] || actor.gender
    actor.age = params["age"] || actor.age
    actor.movie_id = 
    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}
    end
  end

  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"]
    )
    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}
    end
  end

  def destroy
    index = params[:id]
    actor = Actor.find_by(id: index)
    actor.destroy
  end
end
