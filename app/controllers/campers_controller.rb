class CampersController < ApplicationController

    def index 
        render json: Camper.all, status: :ok
    end

    def show 
        render json: Camper.find(params[:id]), serializer: CamperActivitiesSerializer
    end

    def create 
        render json: Camper.create!(camper_params), status: :created
    end

    private 
    def camper_params 
        params.permit(:name, :age)
    end
end
