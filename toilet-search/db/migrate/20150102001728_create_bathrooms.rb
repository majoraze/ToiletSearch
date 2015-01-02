class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.float :lat, {:precision=>10, :scale=>6}
      t.float :lng, {:precision=>10, :scale=>6}
      t.string :address
      t.string :city
      t.string :country
      t.boolean :accessibility
      t.boolean :free
      t.string :free_condition
      t.string :situation
      t.boolean :poo

      t.timestamps null: false
    end
  end
end
