class DropPlayers < ActiveRecord::Migration[7.1]
  def change
    drop_table :players

  end
end
