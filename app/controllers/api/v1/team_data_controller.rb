module Api::V1
  class TeamDataController < ApplicationController

      # GET /nba_player_data
      def index
        @nba_player_data = NbaPlayerDatum.all
    
        render json: @nba_player_data
      end
  end
end