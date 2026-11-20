class Api::GenresController < ApplicationController
  def index
    render json: Genre.all
  end
  def show
    render json: Genre.find(params[:id])
  end
end
