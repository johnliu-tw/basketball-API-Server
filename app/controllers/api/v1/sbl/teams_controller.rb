
class Api::V1::Sbl::TeamsController < ApplicationController

  def index

    team_data = SblTeam.where

    @response['data']= team_data
    
    render json: @response
  end

  def show 

    id =  params[:id]
    team_data = SblTeam.find_by(id: id)
    team_season_data = SblTeamDatum.where(team_id: id)

    @response['data'] = team_data ? team_data : "Data not found"
    @response['season_data'] = team_season_data.exists? ? team_season_data : "Data not found"

    render json: @response
  end
end