class Api::DevelopersController < ApplicationController
  def index
    render json: Developer.all
  end
  def show
    render json: Developer.find(params[:id])
  end
end
