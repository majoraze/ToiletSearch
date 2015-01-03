class Category < ActiveRecord::Base
  has_many :bathroom_category
  has_many :bathrooms
end
