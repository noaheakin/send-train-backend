class CragsController < ApplicationController

    def get_crags
        crags = Crag.all 
        search = crags.select { |n| n.name.downcase.include?(params[:name.downcase]) || n.location.downcase.include?(params[:name.downcase])}
        render :json => search
    end

    def index
        crags = Crag.all
        render json: crags
    end

    def show
        crag = Crag.find(params[:id].to_i)
        render json: crag
    end
end
