class MpapiController < ApplicationController

    skip_before_action :authorized, only: [:show]


    MP_API_KEY = '200976653-c6067a9354900bf9a182c19f021612e4'

    def show
        response = RestClient.get "https://www.mountainproject.com/data/get-routes-for-lat-lon?lat=#{params[:lat]}&lon=#{params[:lon]}&maxDistance=10&maxResults=500&key=#{MP_API_KEY}"
        result = JSON.parse(response)
        render json: result
    end

    def completed_climbs_by_id
        climb_ids = @user.get_completed_climb_ids
        url ="https://www.mountainproject.com/data/get-routes?routeIds=#{climb_ids}&key=#{MP_API_KEY}"
        resp = RestClient.get(url)
        final = JSON.parse(resp)
        
        render :json => final["routes"]
    end
end
