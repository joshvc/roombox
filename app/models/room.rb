class Room < ActiveRecord::Base
  has_many :boxes
  has_many :items, through: :boxes
end
