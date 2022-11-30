class ActivitiesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index
        render json: Activity.all, except: [:created_at, :updated_at], status: :ok
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy!
        head :no_content
    end

    private

    def render_not_found_response(exception)
        render json: { error: "Activity not found" }, status: :not_found
    end
end
