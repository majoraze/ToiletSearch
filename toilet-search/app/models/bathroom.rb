class Bathroom < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :feature, dependent: :destroy
  belongs_to :category
end
