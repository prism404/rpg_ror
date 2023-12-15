class RenameIdResponsToChoice < ActiveRecord::Migration[7.1]
    def change
        rename_column :questions, :id_response, :choice
    end
end
