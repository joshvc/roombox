class Item < ActiveRecord::Base
  belongs_to :box

  def self.search(query)
    query = "%#{query}%"
    where('name ILIKE ?', query)
  end

end
