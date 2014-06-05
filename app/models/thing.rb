class Thing < ActiveRecord::Base
  validates :name,
            length: { in: 3..250}
  validates :description, 
              length: { maximum: 500 }
   validates :description, presence: true   
   validates :user_id, presence: true
   belongs_to :user         
end
