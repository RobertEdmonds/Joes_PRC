class ApperralsController < ApplicationController
    skip_before_action :authorize, only: [:index]

    def index 
        render json: Apperral.all, status: :ok
    end
end
