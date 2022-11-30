class CampersController < ApplicationController

    def index
        render json: Camper.all, except: [:created_at, :updated_at], status: :ok
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, include: :activities
    end

    def create
        new_camper = Camper.create!(camper_params)
        render json: new_camper, status: :created
    end


    private

    def camper_params
        params.permit(:name, :age)
    end
end
