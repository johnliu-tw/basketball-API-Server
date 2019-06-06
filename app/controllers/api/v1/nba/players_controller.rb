
class Api::V1::Nba::PlayersController < ApplicationController

  def index

    # Query and output initialization 
    limit = 10

    if params['limit']
      limit = (params['limit'].to_i <200) && (params['limit'].to_i > 0) ? params['limit']: 200
    end

    player_data = NbaPlayer.order('RAND()').limit(limit)

    @response['data']= player_data
    
    render json: @response
  end

  def show 

    id =  params[:id].to_i
    player_data = NbaPlayer.find_by(id: id)
    player_play_data = NbaPlayerDatum.where(player_id: id)

    @response['data'] = player_data ? player_data : "Data not found"
    @response['play_data'] = player_play_data.exists? ? player_play_data : "Data not found"

    render json: @response
  end
end