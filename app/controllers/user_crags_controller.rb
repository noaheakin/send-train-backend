class UserCragsController < ApplicationController

    before_action :authorized

    def index
        user_crags = UserCrag.all 
        render json: user_crags
    end

    def show
        user_crag = UserCrag.find(params[:id].to_i)
        render json: user_crag
    end

    def destroy
        user_crag = UserCrag.find(params[:id].to_i)
        user_crag.destroy
    end

    def create
        
        user = UserCrag.create(user_id: params[:user_id].to_i, crag_id: params[:crag_id].to_i)
        render json: user
    end
end
