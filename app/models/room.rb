class Room < ActiveRecord::Base
  has_many :boxes
  has_many :items, through: :boxes

  validates :name, presence: true
  validates :identifier, presence: true

  def color_code
    if color.blank?
      "#000"
    else
      color.gsub("#","").insert(0, "#")
    end
  end
end
