
class Api::V1::PlayersController < ApplicationController

  # GET /nba_player_data
  def index

    # Query and output initialization 
    limit = 10
    league = "nba"
    output_data = {
      code: 0,
      msg: "success",
      data: ""
    }


    if params['limit']
      limit = params['limit'].to_i <200 ? params['limit']: 200
    end
    if params['league']
      league = params['league']
    end

    
    if league == "nba"
      player_data = NbaPlayer.order('RAND()').limit(limit)
    elsif league == "sbl"
      player_data = SblPlayer.order('RAND()').limit(limit)
    else
      player_data = ""
    end

    output_data['data'] = player_data
    
    render json: output_data, methods: [:birth_date], except: [:birth]
  end

  def show 
    
  end
end