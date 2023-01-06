class XxlargesController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_xxlarge, only: [:update, :destroy]
    before_action :authorize_user, only: [:create, :update, :destroy]

    def index 
        render json: Xxlarge.all, status: :ok
    end

    def create
        xxlarge = Xxlarge.create!(xxlarge_params)
        render json: xxlarge, status: :created 
    end

    def update 
        @xxlarge.update!(xxlarge_params)
        render json: @xxlarge, status: :created 
    end

    def destroy 
        @xxlarge.destroy
        head :no_content
    end


    private 

    def xxlarge_params
        params.permit(:amount)
    end

    def set_xxlarge
        @xxlarge = Xxlarge.find(params[:id])
    end

    def authorize_user
        user_can_modify = current_user.employee?
        render json: { error: "No touchy!" }, status: :forbidden unless user_can_modify
    end
end
