class ApperralsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_apperral, only: [:show, :update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Apperral.all, status: :ok
    end

    def create
        apperral = Apperral.create!(apperral_params)
        render json: apperral, status: :created 
    end

    def update 
        @apperral.update!(apperral_params)
        render json: @apperral, status: :created 
    end

    def destroy 
        @apperral.destroy
        head :no_content
    end


    private 

    def apperral_params
        params.permit(:price, :description)
    end

    def set_apperral
        @apperral = Apperral.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
