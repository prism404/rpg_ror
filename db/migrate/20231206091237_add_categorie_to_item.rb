class AddCategorieToItem < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :categorie, :string
    add_column :items, :stats, :integer
  end
end
