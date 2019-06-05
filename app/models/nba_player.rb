class NbaPlayer < ApplicationRecord
    has_many :nba_player_datum, :foreign_key => "player_id"
    after_initialize :set_birth_date
    attr_accessor :birth_date

    def set_birth_date
        self.birth_date = self.birth.strftime("%Y-%m-%d")
    end

    def as_json(options={})
        super(:except => [:birth],
              :methods => [:birth_date],
              :include => {
              }
        )
    end
    
end
