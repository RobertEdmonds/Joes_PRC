class LargesController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_large, only: [:update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Large.all, status: :ok
    end

    def create
        large = Large.create!(apperral_params)
        render json: large, status: :created 
    end

    def update 
        @large.update!(apperral_params)
        render json: @large, status: :created 
    end

    def destroy 
        @large.destroy
        head :no_content
    end


    private 

    def large_params
        params.permit(:amount)
    end

    def set_large
        @large = Large.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
