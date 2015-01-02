class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :bathroom, index: true
      t.references :client, index: true
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :ratings, :bathrooms
    add_foreign_key :ratings, :clients
  end
end
