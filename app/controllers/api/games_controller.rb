class Api::GamesController < ApplicationController
  def index
    render json: Game.all
  end
  def show
    render json: Game.find(params[:id])
  end
  def create
    game = Game.new(params.permit(:title, :year, :genre_id, :developer_id))
    if game.save
      render json: game, status: :created
    else
      render json: { errors: game.errors }, status: 422
    end
  end
  def update
    game = Game.find(params[:id])
    if game.update(params.permit(:title, :year, :genre_id, :developer_id))
      render json: game
    else
      render json: { errors: game.errors }, status: 422
    end
  end
  def destroy
    game = Game.find(params[:id])
    if game.destroy
      head :no_content
    else
      render json: { errors: game.errors }, status: 422
    end
  end
end
