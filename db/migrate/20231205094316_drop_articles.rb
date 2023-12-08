class DropArticles < ActiveRecord::Migration[7.1]
  def change
    drop_table: inventories, force: :cascade
  end
end
