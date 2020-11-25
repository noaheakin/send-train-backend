class CragsController < ApplicationController

    def show
        crags = Crag.all 
        search = crags.select { |n| n.name.downcase.include?(params[:name.downcase]) || n.location.downcase.include?(params[:name.downcase])}
        render :json => search
    end
end
