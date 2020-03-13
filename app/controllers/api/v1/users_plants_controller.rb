module Api::V1
  class UsersPlantsController < ApplicationController
    def create
      users_plant = UsersPlant.new(users_plant_params)
      users_plant.save
      render json: users_plant
    end

    private

    def users_plant_params
      params.require(:users_plant).permit(:plant_id, :user_id)
    end
  end
end
