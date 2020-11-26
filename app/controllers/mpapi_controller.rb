class MpapiController < ApplicationController

    MP_API_KEY = ENV['200976653-c6067a9354900bf9a182c19f021612e4']

    def show
        crags = Crag.all 
        crags.find
        response = RestClient.get "https://www.mountainproject.com/data/get-routes-for-lat-lon?lat=#{params[:lat]}&lon=#{params[:lon]}&key=#{MP_API_KEY}"
        result = JSON.parse(response)
        render json: result
    end
end
