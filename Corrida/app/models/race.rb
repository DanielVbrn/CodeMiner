class Race < ApplicationRecord
  has_many :racer
  belongs_to :placement  
end
