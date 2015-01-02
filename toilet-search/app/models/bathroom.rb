class Bathroom < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
