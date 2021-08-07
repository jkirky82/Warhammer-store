class Listing < ApplicationRecord
  belongs_to :user 
  belongs_to :armyfaction
  belongs_to :paint
  belongs_to :condition
  has_one_attached :picture

  validates :title, presence: true   
  validates :description, presence: true   
  validates :price, presence: true   
  validates :availability, presence: true   
end
