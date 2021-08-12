class Listing < ApplicationRecord
  belongs_to :user 
  belongs_to :armyfaction
  belongs_to :paint
  belongs_to :condition
  has_one_attached :picture

  #Validating to make it so they must be entered when in a form
  validates :title, presence: true   
  validates :description, presence: true   
  validates :price, presence: true   
end
