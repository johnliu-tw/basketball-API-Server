class SblPlayerDatum < ApplicationRecord
  belongs_to :sbl_player, :foreign_key => "player_id"
  belongs_to :sbl_team, :foreign_key => "team_id"
end
