class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :bathroom, index: true
      t.boolean :accessibility
      t.boolean :free
      t.boolean :vase
      t.boolean :urinal
      t.boolean :baby_change
    end
    add_foreign_key :features, :bathrooms
  end
end
