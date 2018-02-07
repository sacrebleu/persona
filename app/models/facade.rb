class Facade < ApplicationRecord

  belongs_to :author
  has_many :certifications
  has_many :facade_skills
  has_many :positions
  has_many :skills, through: :facade_skills
  has_many :summaries
  has_many :titles

  def breadcrumbs
    skills.order(years: :desc).where(major: true, suppress: false).map(&:display_name)
  end

 end
