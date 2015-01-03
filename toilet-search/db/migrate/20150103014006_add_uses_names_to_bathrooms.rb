class AddUsesNamesToBathrooms < ActiveRecord::Migration
  def change
    add_column :bathrooms, :uses, :integer
    add_column :bathrooms, :name, :string
  end
end
