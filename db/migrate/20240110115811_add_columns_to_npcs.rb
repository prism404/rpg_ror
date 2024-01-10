class AddColumnsToNpcs < ActiveRecord::Migration[7.1]
  def change
    add_column :npcs, :health_points, :integer
    add_column :npcs, :avatar, :string
  end
end
