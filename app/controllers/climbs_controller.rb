class ClimbsController < ApplicationController

    def index
        climbs = Climb.all
        render :json => climbs
    end

    def show
        climb = Climb.find(params[:id])
        render :json => climb
    end

    def create
        climb = Climb.find_or_create_by(climb_params)
        if climb.valid?
            climb.save
            render :json => climb
        end
    end

    private

    def climb_params
        params.require(:climb).permit(:mp_id, :name)
    end
end
