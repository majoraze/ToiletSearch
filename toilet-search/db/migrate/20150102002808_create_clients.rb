class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :username
      t.integer :facebook_id, {limit: 8}
      t.text :facebook_token

      t.timestamps null: false
    end
  end
end
