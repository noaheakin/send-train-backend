class UserCragsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        user_crags = UserCrag.all 
        render json: user_crags
    end

    def show
        user_crag = UserCrag.find(params[:id].to_i)
        render json: user_crag
    end

    def destroy
        user_crag = UserCrag.find_by(crag_id: params[:id].to_i)
        user_crag.destroy
    end

    def create
        user_crag = UserCrag.find_or_create_by(user_id: @user.id, crag_id: params[:crag_id].to_i)
        render json: @user.crags.filter{|crag| crag.id === user_crag.crag_id}[0]
    end
end
