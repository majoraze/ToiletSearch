class Review < ActiveRecord::Base
  belongs_to :bathroom
  belongs_to :client
end
