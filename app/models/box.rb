class Box < ActiveRecord::Base
  belongs_to :room
  has_many :items

  def name
    room.identifier + id.to_s
  end

  def self.lookup(query)
    q = query.delete("^0-9")
    find(q)
  end
end
