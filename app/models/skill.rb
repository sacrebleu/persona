class Skill < ApplicationRecord
  has_one :facade, through: :facade_skill
  has_many :positions, through: :facade_position

  scope :by_level, -> { order(level: :desc).order(years: :desc).order(name: :desc)}

  def display_level
    %w[beginnner intermediate experienced skilled expert][level]
  end

  def display_name
    name.split("_").map {|n| n.upcase == n ? n : n.capitalize }.join(" ")
  end
end
