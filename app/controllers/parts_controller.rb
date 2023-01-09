class PartsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :set_part, only: [:show, :update, :destroy]

    def index 
        render json: Part.all, status: :ok 
    end

    def show 
        render json: @part, status: :ok
    end

    def create 
        part = Part.create!(part_params)
        render json: part, status: :created 
    end

    def update 
        @part.update!(part_params)
        render json: @part, status: :created 
    end

    def destroy 
        @part.destroy 
        head :no_content
    end

    private 

    def part_params 
        params.permit(:description, :inventory, :price)
    end

    def set_part 
        @part = Part.find(params[:id])
    end

end
