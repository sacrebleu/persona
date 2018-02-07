class Position < ApplicationRecord
  belongs_to :facade

  has_many :position_skills
  has_many :skills, through: :position_skills
  has_many :achievements

  scope :current, -> { find_by(departed: nil) }
  scope :prior, -> { where.not(departed: nil) }

  def friendly_joined
    joined.strftime("%b %Y")
  end

  def friendly_departed
    departed ? departed.strftime("%b %Y") : "Current"
  end
end
