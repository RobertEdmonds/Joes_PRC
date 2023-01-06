class SmallsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_small, only: [:update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Small.all, status: :ok
    end

    def create
        small = Small.create!(small_params)
        render json: small, status: :created 
    end

    def update 
        @small.update!(small_params)
        render json: @small, status: :created 
    end

    def destroy 
        @small.destroy
        head :no_content
    end


    private 

    def small_params
        params.permit(:amount)
    end

    def set_small
        @small = Small.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
