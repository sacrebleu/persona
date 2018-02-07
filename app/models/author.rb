class Author < ApplicationRecord

  has_many :facades
  has_many :tags

  def display_name
    "%s %s" % [ first_name, last_name ]
  end

  def information
    [
        [ 'Nationality',  nationalities ],
        [ 'Education', degree ]
    ]
  end
end
