class NbaPlayer < ApplicationRecord
    has_many :nba_player_datum, :foreign_key => "player_id"
end
