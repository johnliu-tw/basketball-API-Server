
class Api::V1::Nba::TeamsController < ApplicationController

  def index

    team_data = NbaTeam.where.not(s_name: "TOT")

    @response['data']= team_data
    
    render json: @response
  end

  def show 

    id =  params[:id].to_i
    team_data = NbaTeam.find_by(id: id)
    team_season_data = NbaTeamDatum.where(team_id: id)

    @response['data'] = team_data ? team_data : "Data not found"
    @response['play_data'] = team_season_data.exists? ? team_season_data : "Data not found"

    render json: @response
  end
end