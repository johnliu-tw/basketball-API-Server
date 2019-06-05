class AddIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :nba_player_data, :player_id
  end
end
