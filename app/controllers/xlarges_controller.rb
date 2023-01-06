class XlargesController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_large, only: [:update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Xlarge.all, status: :ok
    end

    def create
        xlarge = Xlarge.create!(xlarge_params)
        render json: xlarge, status: :created 
    end

    def update 
        @xlarge.update!(xlarge_params)
        render json: @xlarge, status: :created 
    end

    def destroy 
        @xlarge.destroy
        head :no_content
    end


    private 

    def xlarge_params
        params.permit(:amount)
    end

    def set_xlarge
        @xlarge = Xlarge.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
