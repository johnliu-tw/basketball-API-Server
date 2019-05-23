class NbaTeamDatum < ApplicationRecord
  belongs_to :nba_team, :foreign_key => "team_id"
  belongs_to :nba_player, :foreign_key => "top_player_id"
end
