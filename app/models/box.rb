class Box < ActiveRecord::Base
  belongs_to :room
  has_many :items

  def name
    room.identifier + id.to_s
  end
end
