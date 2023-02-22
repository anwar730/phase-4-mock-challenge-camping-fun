class SignupsController < ApplicationController
    def index
        render json:Signup.all
    end
    def create
        signup=Signup.create!(signup_params)
        render json:signup
    end

    private
    def signup_params
        params.permit(:activity_id,:camper_id,:time)
    end
end
