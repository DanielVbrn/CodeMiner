class Racer < ApplicationRecord
  validates :name
  validates :born_at
  validates :image_url
  has_many :placement
  belongs_to :race
end
