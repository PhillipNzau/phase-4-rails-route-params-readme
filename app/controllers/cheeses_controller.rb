class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #find a cheese using id fro url
    id = params[:id]
    cheese = Cheese.find_by(id: id)
    render json: cheese
    #senda  json res using that cheese obj
  end

end
