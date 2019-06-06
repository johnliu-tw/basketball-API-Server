class SblPlayerDatum < ApplicationRecord
  belongs_to :sbl_player, :foreign_key => "player_id"
  belongs_to :sbl_team, :foreign_key => "team_id"
  after_initialize :set_fga, :set_3pa, :set_fta, :set_sp

  def set_fga
    self.fga = self.fga + self.fg
  end

  def set_3pa
    self['3pa'] = self['3pa']  + self['3p'] 
  end

  def set_fta
    self.fta = self.fta + self.ft
  end

  def set_sp
    self.sp = self.sp / 60
  end


end
