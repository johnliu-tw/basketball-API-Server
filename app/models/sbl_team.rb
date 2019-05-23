class SblTeam < ApplicationRecord
    has_many :sbl_team_datum, :foreign_key => "team_id"
    has_many :sbl_player_datum, :foreign_key => "team_id"
end
