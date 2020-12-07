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
        completed_climb = CompletedClimb.find_or_create_by(user_id: @user.id, climb_id: params[:climb_id].to_i)
        if completed_climb.valid?
            completed_climb.save
            # byebug
            # completed_climb = {completed_climb_id: completed_climb.climb_id.to_i}
            # climb = @user.climbs_done.filter{|climb| climb.id === completed_climb[:completed_climb_id]}[0]
            # byebug
            render :json => @user.climbs_done.filter{|climb| climb.id === completed_climb.climb_id}[0]
        end
    end

    def destroy
        found_climb = Climb.find_by(mp_id: params[:id])
        completed_climb = CompletedClimb.find_by(user_id: @user.id, climb_id: found_climb.id)
        completed_climb.destroy
    end

    private

    def completed_climb_params
        params.require(:completed_climb).permit(:user_id, :climb_id)
    end
end
