class XsmallsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_xsmall, only: [:update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Xsmall.all, status: :ok
    end

    def create
        xsmall = Xsmall.create!(xsmall_params)
        render json: xsmall, status: :created 
    end

    def update 
        @xsmall.update!(xsmall_params)
        render json: @xsmall, status: :created 
    end

    def destroy 
        @xsmall.destroy
        head :no_content
    end


    private 

    def xsmall_params
        params.permit(:amount)
    end

    def set_xsmall
        @xsmall = Xsmall.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
