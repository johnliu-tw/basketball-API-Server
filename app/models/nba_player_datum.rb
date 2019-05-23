class NbaPlayerDatum < ApplicationRecord
  belongs_to :nba_player, :foreign_key => "player_id"
  belongs_to :nba_team, :foreign_key => "team_id"
end
