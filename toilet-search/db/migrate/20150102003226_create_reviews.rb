class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :bathroom, index: true
      t.references :client, index: true
      t.text :review
      t.string :condition
      t.string :photo

      t.timestamps null: false
    end
    add_foreign_key :reviews, :bathrooms
    add_foreign_key :reviews, :clients
  end
end
