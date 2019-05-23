class NbaTeam < ApplicationRecord
    has_many :nba_team_datum, :foreign_key => "team_id"
    has_many :nba_player_datum, :foreign_key => "team_id"
end
