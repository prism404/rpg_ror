class DropPlayerEnigmas < ActiveRecord::Migration[7.1]
  def change
    drop_table :player_enigmas
  end
end
