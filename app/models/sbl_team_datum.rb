class SblTeamDatum < ApplicationRecord
  belongs_to :sbl_team, :foreign_key => "team_id"
end
