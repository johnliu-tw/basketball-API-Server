class Api::V1::Sbl::PlayersController < ApplicationController

  # GET /nba_player_data
  def index

    # Query and output initialization 
    limit = 10

    if params['limit']
      limit = (params['limit'].to_i <20) && (params['limit'].to_i > 0) ? params['limit']: 20
    end

    player_data = SblPlayer.order('RAND()').limit(limit)

    @response['data'] = player_data
    
    render json: @response
  end

  def show 
    
    id =  params[:id]
    player_data = SblPlayer.find_by(id: id)
    player_play_data = SblPlayerDatum.where(player_id: id)

    @response['data'] = player_data ? player_data : "Data not found"
    @response['play_data'] = player_play_data.exists? ? player_play_data : "Data not found"

    render json: @response
  end
end