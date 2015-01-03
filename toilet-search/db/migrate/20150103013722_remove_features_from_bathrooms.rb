class RemoveFeaturesFromBathrooms < ActiveRecord::Migration
  def change
    change_table :bathrooms do |t|
      t.remove :accessibility, :free, :free_condition, :poo, :situation
    end
  end
end
