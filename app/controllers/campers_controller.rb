class CampersController < ApplicationController

    def index
        render json: Camper.all, except: [:created_at, :updated_at], include: ['activities']
    end
end
