class CreateEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :emails do |t|
      t.string :password_digest

      t.timestamps
    end
  end
end
