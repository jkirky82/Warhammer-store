class Listing < ApplicationRecord
  belongs_to :user 
  belongs_to :armyfaction
  belongs_to :paint
  belongs_to :condition
end
