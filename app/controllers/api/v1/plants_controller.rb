module Api::V1
  class PlantsController < ApplicationController
    before_action :find_plant, only: [:update, :edit, :show, :destroy]
    # skip_before_action :authorized # for testing only

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

    def edit
    end

    def update
      if @plant.update(plant_params)
        puts "=> plant updated"
        render json: { message: "plant successfully saved.", success: true, data: @plant }, status: 200
      else
        puts "plant not saved"
        puts "Errors= #{@plant.errors.full_messages.join(", ")}"
        render json: { message: "plant NOT updated because #{@plant.errors.full_messages.join(", ")}", success: false, data: @plant.errors.full_messages }, status: 406
      end
    end

    def destroy
      @plant.destroy
      render json: { message: "plant successfully deleted.", success: true, data: @plant }
    end

    private

    def find_plant
      @plant = Plant.find(params[:id])
    end

    def plant_params
      params.require(:plant).permit(:name, :notes, :water_frequency, :image_url)
    end
  end
end
