class AddCategoryToBathroom < ActiveRecord::Migration
  def change
    add_reference :bathrooms, :category, index: true
    add_foreign_key :bathrooms, :categories
  end
end
