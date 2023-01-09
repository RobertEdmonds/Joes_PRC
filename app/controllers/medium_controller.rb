class MediumController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_medium, only: [:update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Medium.all, status: :ok
    end

    def create
        medium = Medium.create!(medium_params)
        render json: medium, status: :created 
    end

    def update 
        @medium.update!(medium_params)
        render json: @medium, status: :created 
    end

    def destroy 
        @medium.destroy
        head :no_content
    end


    private 

    def medium_params
        params.permit(:amount)
    end

    def set_small
        @medium = Medium.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
