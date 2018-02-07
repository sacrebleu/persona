class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_create do
    self.id = SecureRandom.uuid
  end

end
