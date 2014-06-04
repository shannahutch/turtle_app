class Thing < ActiveRecord::Base
  validates :name,
            length: { in: 3..250}
  validates :description, 
              length: { maximum: 500 }

end
