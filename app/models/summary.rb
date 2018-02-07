class Summary < ApplicationRecord
  belongs_to :facade

  scope :current, -> { order(created_at: :desc).first }
end
