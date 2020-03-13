module Api::V1
  class PlantsController < ApplicationController
    before_action :find_plant, only: [:show]

    def index
      plants = Plant.all
      render json: plants
    end

    def show
      render json: plant
    end

    def new
      plant = Plant.new
    end

    def create
      plant = Plant.new(plant_params)
      plant.save
      render json: plant
    end

    private

    def find_plant
      plant = Plant.find(params[:id])
      render json: plant
    end

    def plant_params
      params.require(:plant).permit(:name, :notes, :water_frequency, :image_url)
    end
  end
end
