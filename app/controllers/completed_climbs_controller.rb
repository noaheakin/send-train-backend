class CompletedClimbsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        completed_climbs = CompletedClimb.all
        render :json => completed_climbs
    end

    def show
        completed_climb = CompletedClimb.find(params[:id])
        render :json => completed_climb
    end

    def create
        byebug
        completed_climb = CompletedClimb.find_or_create_by(completed_climb_params)
        if completed_climb.valid?
            completed_climb.save
            render :json => completed_climb
        end
    end

    private

    def completed_climb_params
        params.require(:completed_climb).permit(:user_id, :climb_id)
    end
end
