class Listing < ApplicationRecord
  belongs_to :user 
  belongs_to :armyfaction
  belongs_to :painted
  belongs_to :condition
end
