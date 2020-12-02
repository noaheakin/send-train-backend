class ClimbsController < ApplicationController

    MP_API_KEY = '200976653-c6067a9354900bf9a182c19f021612e4'

    def index
        climbs = Climb.all
        render :json => climbs
    end

    def show
        climb = Climb.find(params[:id])
        url ="https://www.mountainproject.com/data/get-routes?routeIds=#{climb.mp_id}&key=#{MP_API_KEY}"
        # encoded_url = URI.encode(url)
        resp = RestClient.get(url)
        final = JSON.parse(resp)
        render :json => final["routes"][0]
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
