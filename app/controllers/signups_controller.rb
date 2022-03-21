class SignupsController < ApplicationController

    def create 
        render json: Signup.create!(signup_params), status: :created
    end
    private
    def signup_params 
        params.permit(:time, :activity_id, :camper_id)
    end
end
