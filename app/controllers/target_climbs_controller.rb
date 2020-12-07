class TargetClimbsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        target_climbs = TargetClimb.all
        render :json => target_climbs
    end

    def show
        target_climb = TargetClimb.find(params[:id])
        render :json => target_climb
    end

    def create
        target_climb = TargetClimb.find_or_create_by(user_id: @user.id, climb_id: params[:climb_id].to_i)
        if target_climb.valid?
            target_climb.save
            # byebug
            # completed_climb = {completed_climb_id: completed_climb.climb_id.to_i}
            # climb = @user.climbs_done.filter{|climb| climb.id === completed_climb[:completed_climb_id]}[0]
            # byebug
            render :json => @user.climbs_want.filter{|climb| climb.id === target_climb.climb_id}[0]
        end
    end

    def destroy
        found_climb = Climb.find_by(mp_id: params[:id])
        target_climb = TargetClimb.find_by(user_id: @user.id, climb_id: found_climb.id)
        target_climb.destroy
    end

end
